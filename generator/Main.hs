{-# LANGUAGE OverloadedStrings #-}
{- HLINT ignore "Use newtype instead of data" -}

module Main where

import Data.Aeson (eitherDecode)
import Data.ByteString.Lazy as BS ( readFile )
import Data.Aeson.Types ( (.:), (.:?),  (.!=), Object, Parser, parseEither, (<?>), JSONPathElement (..) )
import qualified Data.Aeson.Types (Value (Object, String))
import Data.Aeson.KeyMap (keys, insert, member, lookup)
import Control.Monad (forM)
import Control.Applicative ((<|>))
import Data.Aeson.Key (toString)
import qualified Data.Text as T
import Data.Bifunctor (bimap)
import Text.Pretty.Simple (pPrint)


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
    | EmptySchema
    deriving Show

parseSchema :: Object -> Parser ParsedSchema
parseSchema obj
    | member "$ref" obj = parseRef obj
    | member "const" obj = parseConstant obj
    | member "enum" obj && member "allOf" obj = parseTypedEnum obj
    | member "enum" obj = parseEnum obj
    | Data.Aeson.KeyMap.lookup "type" obj == Just (Data.Aeson.Types.String $ T.pack "object") = parseObject obj
    | null (keys obj) = pure EmptySchema
    | otherwise = parseAnyOf obj <|> parseAllOf obj <|> parseOneOf obj <|> parseArray obj <|> parseInteger obj <|> parseRawType obj <|> parseAlternativeTypes obj
  where
    parseRef o = do
        ref <- o .: "$ref"
        if T.isPrefixOf "#/components/schemas/" ref
            then pure $ RefSchema . ParsedSchemaRef $ T.unpack $ T.drop (T.length "#/components/schemas/") ref
            else fail "Expected $ref to start with '#/components/schemas/'"
    parseConstant o = ConstSchema . ParsedSchemaConstant <$> (o .: "const")
    parseEnum o = EnumSchema . ParsedSchemaEnum <$> (o .: "enum")
    parseTypedEnum o = do
        -- If there is an "allOf" and "enum" and the allOf array is a single
        -- schema that succeeds parseRef, then we can treat this as a typed enum
        allOf <- o .:? "allOf"
        enum <- (Left <$>) <$> o .: "enum" <|> (Right <$>) <$> o .: "enum"
        case (allOf, enum) of
            (Just [schema], eVal) -> case parseEither parseRef schema of
                Right (RefSchema ref) -> return $ TypedEnumSchema (ParsedSchemaTypedEnum (parsedSchemaRef ref) eVal)
                _ -> fail "allOf array did not contain a single $ref schema"
            _ -> fail "Not a typed enum"
    parseAnyOf o = do
        schemas <- o .: "anyOf"
        AnyOfSchema <$> forM schemas (\s -> do
            parsed <- parseSchema s
            return ("", parsed)) -- We don't have a name for these schemas, so we use an empty string
    parseAllOf o = do
        schemas <- o .: "allOf"
        AllOfSchema <$> forM schemas (\s -> do
            parsed <- parseSchema s
            return ("", parsed))
    parseOneOf o = do
        schemas <- o .: "oneOf"
        OneOfSchema <$> forM schemas (\s -> do
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
            _ -> pure ()

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

convertRawTypeSchemasToRef :: [(String, ParsedSchema)] -> [(String, ParsedSchema)] -> ([(String, ParsedSchema)], [(String, ParsedSchema)])
convertRawTypeSchemasToRef _ [] = ([], [])
convertRawTypeSchemasToRef topLevel (schema:schemas) = case schema of
    (name, RawTypeSchema rawType) -> bimap
        ((name ++ parsedSchemaRawType rawType, RawTypeSchema rawType) :)
        ((name, RefSchema (ParsedSchemaRef (name ++ parsedSchemaRawType rawType))) :)
        (convertRawTypeSchemasToRef topLevel schemas)
    (_name, AnyOfSchema subschemas) -> bimap
        (fst (convertRawTypeSchemasToRef topLevel subschemas) ++)
        (snd (convertRawTypeSchemasToRef topLevel subschemas) ++)
        (convertRawTypeSchemasToRef topLevel schemas)
    (_name, AllOfSchema subschemas) -> bimap
        (fst (convertRawTypeSchemasToRef topLevel subschemas) ++)
        (snd (convertRawTypeSchemasToRef topLevel subschemas) ++)
        (convertRawTypeSchemasToRef topLevel schemas)
    (_name, OneOfSchema subschemas) -> bimap
        (fst (convertRawTypeSchemasToRef topLevel subschemas) ++)
        (snd (convertRawTypeSchemasToRef topLevel subschemas) ++)
        (convertRawTypeSchemasToRef topLevel schemas)
    (name, ConstSchema value) -> bimap
        ((name ++ "Const" ++ parsedSchemaConst value, ConstSchema value) :)
        ((name, RefSchema (ParsedSchemaRef (name ++ "Const" ++ parsedSchemaConst value))) :)
        (convertRawTypeSchemasToRef topLevel schemas)
    (name, EnumSchema enum) -> bimap
        ((name ++ "Enum", EnumSchema enum) :)
        ((name, RefSchema (ParsedSchemaRef (name ++ "Enum"))) :)
        (convertRawTypeSchemasToRef topLevel schemas)
    (name, TypedEnumSchema typedEnum) -> bimap
        ((name, TypedEnumSchema typedEnum) :)
        ((name, RefSchema (ParsedSchemaRef name)) :)
        (convertRawTypeSchemasToRef topLevel schemas)
    (name, ArraySchema array) -> bimap
        ((name, ArraySchema array) :)
        ((name, RefSchema (ParsedSchemaRef name)) :)
        (convertRawTypeSchemasToRef topLevel schemas)
    (name, IntegerSchema integer) -> bimap
        ((name ++ "Integer", IntegerSchema integer) :)
        ((name, RefSchema (ParsedSchemaRef $ name ++ "Integer")) :)
        (convertRawTypeSchemasToRef topLevel schemas)
    (name, ObjectSchema object) -> bimap
        (\rest -> [(name ++ "Object", ObjectSchema . fst $ replaceObjectPropertiesWithRefs object)] ++ snd (replaceObjectPropertiesWithRefs object) ++ rest)
        ((name, RefSchema (ParsedSchemaRef $ name ++ "Object")) :)
        (convertRawTypeSchemasToRef topLevel schemas)
    (_name, RefSchema _ref) -> bimap id (schema :) (convertRawTypeSchemasToRef topLevel schemas)
    (_name, EmptySchema) -> bimap id (schema :) (convertRawTypeSchemasToRef topLevel schemas)

replaceObjectPropertiesWithRefs :: ParsedSchemaObject -> (ParsedSchemaObject, [(String, ParsedSchema)])
replaceObjectPropertiesWithRefs (ParsedSchemaObject properties required) = (ParsedSchemaObject newProperties required, newSchemas)
  where
    (newSchemas, newProperties) = convertRawTypeSchemasToRef [] properties


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

    pPrint $ convertRawTypeSchemasToRef [] schemas
