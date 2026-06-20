{-# LANGUAGE OverloadedStrings #-}

module Main where

import Data.Aeson (eitherDecode)
import Data.ByteString.Lazy as BS ( readFile )
import Data.Aeson.Types ( (.:), (.:?),  (.!=), Object, Parser, parseEither, (<?>), JSONPathElement (..) )
import Data.Aeson.KeyMap (keys)
import Control.Monad (forM)
import Control.Applicative ((<|>))



data SchemaBaseSchema = SchemaBaseSchema
    {
        schemaType :: [String],
        schemaProperties :: [(String, Schema)],
        schemaRequired :: [String]
    } deriving Show

data Schema = BaseSchema SchemaBaseSchema
            | RefSchema String
            | AnyOfSchema [Schema]
            | AllOfSchema [Schema]
            | OneOfSchema [Schema]
            | EmptySchema
            deriving Show

newtype NoRefSchema = NoRefSchema SchemaBaseSchema deriving Show

parseSchema :: Object -> Parser Schema
parseSchema obj =
    parseRef
    <|> parseAnyOf
    <|> parseAllOf
    <|> parseOneOf
    <|> parseBase
    <|> parseEmpty
  where
    parseRef = do
        RefSchema <$> obj .: "$ref"

    parseAnyOf = do
        mAnyOf <- obj .: "anyOf"
        AnyOfSchema <$> forM mAnyOf parseSchema

    parseAllOf = do
        mAllOf <- obj .: "allOf"
        AllOfSchema <$> forM mAllOf parseSchema

    parseOneOf = do
        mOneOf <- obj .: "oneOf"
        OneOfSchema <$> forM mOneOf parseSchema

    parseBase = do
        -- If "type" is a string, convert it to a list with one element
        parsedSchemaType <- obj .: "type" <|> fmap (:[]) (obj .: "type")

        propertiesObj <- obj .:? "properties" .!= mempty
        let propertyNames = keys propertiesObj
        parsedProperties <- forM propertyNames $ \k -> do
            propObj <- propertiesObj .: k
            propSchema <- parseSchema propObj
            return (show k, propSchema)
        parsedRequired <- obj .:? "required" .!= []
        return $ BaseSchema $ SchemaBaseSchema parsedSchemaType parsedProperties parsedRequired

    parseEmpty = do
        -- Check that the object is empty (i.e., has no keys)
        if null (keys obj)
            then return $ BaseSchema $ SchemaBaseSchema [] [] []
            else fail "Expected an empty schema object as all other parsers failed"

parseSchemas :: Object -> Parser [(String, Schema)]
parseSchemas obj = do
    components <- obj .: "components"
    schemasObj <- components .: "schemas"
    let schemaNames = keys schemasObj
    forM schemaNames $ \k -> flip (<?>) (Key k) $ do
        schemaObj <- schemasObj .: k
        schema <- parseSchema schemaObj
        return (show k, schema)

main :: IO ()
main = do
    putStrLn "Starting Generator"
    content <- BS.readFile "openapi.json"

    let schemasE = case eitherDecode content of
            Right obj -> case parseEither parseSchemas obj of
                Right schemas -> Right schemas
                Left err -> Left $ "Failed to parse schemas: " ++ show err
            Left err -> Left $ "Failed to decode JSON: " ++ show err

    schemas <- case schemasE of
        Right s -> return s
        Left err -> error err

    print schemas
