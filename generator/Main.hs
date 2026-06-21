{-# LANGUAGE OverloadedStrings #-}
{- HLINT ignore "Use newtype instead of data" -}

module Main where

import Data.Aeson (eitherDecode)
import Data.ByteString.Lazy as BS ( readFile )
import Data.Aeson.Types ( (.:), (.:?),  (.!=), Object, Parser, parseEither, (<?>), JSONPathElement (..) )
import qualified Data.Aeson.Types (Value (Object, String))
import Data.Aeson.KeyMap (keys, insert)
import Control.Monad (forM)
import Control.Applicative ((<|>))
import Data.Aeson.Key (toString)
import qualified Data.Text as T


data ParsedSchemaConstant = ParsedSchemaConstant
    {
        parsedSchemaConst :: String
    } deriving Show

data ParsedSchemaEnum = ParsedSchemaEnum
    {
        parsedSchemaEnum :: [Either String Integer]
    } deriving Show

data ParsedSchemaTypedEnum = ParsedSchemaTypedEnum
    {
        parsedSchemaTypedEnumType :: String,
        parsedSchemaTypedEnumValues :: [Either String Integer]
    } deriving Show

data ParsedSchemaRef = ParsedSchemaRef
    {
        parsedSchemaRef :: String
    } deriving Show

data ParsedSchemaArray = ParsedSchemaArray
    {
        parsedSchemaArrayItems :: ParsedSchema,
        parsedSchemaArrayMinItems :: Maybe Integer,
        parsedSchemaArrayMaxItems :: Maybe Integer
    } deriving Show

data ParsedSchemaInteger = ParsedSchemaInteger
    {
        parsedSchemaFormat :: Maybe String,
        parsedSchemaIntegerMinimum :: Maybe Integer,
        parsedSchemaIntegerMaximum :: Maybe Integer
    } deriving Show

data ParsedSchemaRawType = ParsedSchemaRawType
    {
        parsedSchemaRawType :: String
    } deriving Show

data ParsedSchemaObject = ParsedSchemaObject
    {
        parsedSchemaObjectProperties :: [(String, ParsedSchema)],
        parsedSchemaObjectRequired :: [String]
    } deriving Show

data ParsedSchema
    = RefSchema ParsedSchemaRef
    | AnyOfSchema [(String, ParsedSchema)]
    | AllOfSchema [(String, ParsedSchema)]
    | OneOfSchema [(String, ParsedSchema)]
    | ConstSchema ParsedSchemaConstant
    | EnumSchema ParsedSchemaEnum
    | TypedEnumSchema ParsedSchemaTypedEnum
    | ArraySchema ParsedSchemaArray
    | IntegerSchema ParsedSchemaInteger
    | ObjectSchema ParsedSchemaObject
    | RawTypeSchema ParsedSchemaRawType
    deriving Show

parseSchema :: Object -> Parser ParsedSchema
parseSchema obj =
    parseRef obj <|> parseConstant obj <|> parseTypedEnum obj <|> parseEnum obj <|> parseAnyOf obj <|> parseAllOf obj <|> parseOneOf obj <|> parseArray obj <|> parseInteger obj <|> parseObject obj <|> parseRawType obj <|> parseAlternativeTypes obj
  where
    parseRef o = RefSchema . ParsedSchemaRef <$> (o .: "$ref")
    parseConstant o = ConstSchema . ParsedSchemaConstant <$> (o .: "const")
    parseEnum o = EnumSchema . ParsedSchemaEnum <$> (o .: "enum")
    parseTypedEnum o = do
        -- If there is an "allOf" and "enum" and the allOf array is a single
        -- schema that succeeds parseRef, then we can treat this as a typed enum
        allOf <- o .:? "allOf"
        enum <- o .:? "enum"
        case (allOf, enum) of
            (Just [schema], Just enumValues) -> case parseEither parseRef schema of
                Right (RefSchema ref) -> return $ TypedEnumSchema (ParsedSchemaTypedEnum (parsedSchemaRef ref) enumValues)
                _ -> fail "allOf array did not contain a single $ref schema"
            _ -> fail "Not a typed enum"
    parseAnyOf o = do
        anyOfSchemas <- o .:? "anyOf"
        case anyOfSchemas of
            Nothing -> fail "Expected 'anyOf' field for anyOf schema"
            Just [] -> fail "Expected 'anyOf' array to have at least one schema"
            Just schemas -> AnyOfSchema <$> forM schemas (\s -> do
                parsed <- parseSchema s
                return ("", parsed)) -- We don't have a name for these schemas, so we use an empty string
    parseAllOf o = do
        allOfSchemas <- o .:? "allOf"
        case allOfSchemas of
            Nothing -> fail "Expected 'allOf' field for allOf schema"
            Just [] -> fail "Expected 'allOf' array to have at least one schema"
            Just schemas -> AllOfSchema <$> forM schemas (\s -> do
                parsed <- parseSchema s
                return ("", parsed))
    parseOneOf o = do
        oneOfSchemas <- o .:? "oneOf"
        case oneOfSchemas of
            Nothing -> fail "Expected 'oneOf' field for oneOf schema"
            Just [] -> fail "Expected 'oneOf' array to have at least one schema"
            Just schemas -> OneOfSchema <$> forM schemas (\s -> do
                parsed <- parseSchema s
                return ("", parsed))
    parseArray o = do
        items <- o .:? "items"
        case items of
            Just (Data.Aeson.Types.Object itemsObj) -> do
                parsedItems <- parseSchema itemsObj
                minItems <- itemsObj .:? "minItems"
                maxItems <- itemsObj .:? "maxItems"
                return $ ArraySchema $ ParsedSchemaArray parsedItems minItems maxItems
            Just _ -> fail "Expected 'items' to be an object"
            Nothing -> fail "Expected 'items' field for array schema"
    parseInteger o = do
        parsedType <- o .: "type"
        case (parsedType :: String) of
            "integer" -> pure ()
            _ -> fail "Expected 'type' to be 'integer'"
        IntegerSchema <$> (ParsedSchemaInteger <$> (o .:? "format") <*> (o .:? "minimum") <*> (o .:? "maximum"))
    parseObject o = do
        parsedType <- o .: "type"
        case (parsedType :: String) of
            "object" -> pure ()
            _ -> fail "Expected 'type' to be 'object'"

        propertiesObj <- o .:? "properties" .!= mempty
        let propertyNames = keys propertiesObj
        properties <- forM propertyNames $ \k -> flip (<?>) (Key k) $
            do
                propertySchemaObj <- propertiesObj .: k
                propertySchema <- parseSchema propertySchemaObj
                return (toString k, propertySchema)
        required <- o .:? "required" .!= []
        return $ ObjectSchema $ ParsedSchemaObject properties required
    parseRawType o = do
        RawTypeSchema . ParsedSchemaRawType <$> (o .: "type")
    parseAlternativeTypes o = do
        types <- o .: "type"
        case types of
            [] -> fail "Expected 'type' field to be a non-empty array of strings"
            _ -> pure()

        AnyOfSchema <$> forM types (\t -> do
            let schemaObj = insert "type" (Data.Aeson.Types.String (T.pack t)) o
            parsedSchema <- parseSchema schemaObj
            return ("", parsedSchema))

parseSchemas :: Object -> Parser [(String, ParsedSchema)]
parseSchemas obj = do
    components <- obj .: "components"
    schemasObj <- components .: "schemas"
    let schemaNames = keys schemasObj
    forM schemaNames $ \k -> flip (<?>) (Key k) $ do
        schemaObj <- schemasObj .: k
        schema <- parseSchema schemaObj
        return (toString k, schema)

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
