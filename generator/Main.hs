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
import Data.Aeson.Key (toString, fromString)
import qualified Data.Text as T
import Text.Pretty.Simple (pPrint)
import qualified Data.Map.Strict as StrictMap
import Data.Char (toUpper, isAlphaNum, isAlpha)
import Data.List.NonEmpty (head)
import qualified Data.List.NonEmpty as NE
import Prelude hiding (head)
import Data.List (intercalate)
import Data.Maybe (isJust, fromJust)


data ParsedSchemaConstant = ParsedSchemaConstant
    {
        parsedSchemaConst :: String
    } deriving Show

data ParsedSchemaEnum = ParsedSchemaEnum
    {
        parsedSchemaEnum :: Either [String] [Integer]
    } deriving Show

data ParsedSchemaTypedEnum = ParsedSchemaTypedEnum
    {
        parsedSchemaTypedEnumType :: String,
        parsedSchemaTypedEnumValues :: Either [String] [Integer]
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
    | NullableSchema ParsedSchema
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
    parseEnum o = EnumSchema . ParsedSchemaEnum <$> (Left <$> (o .: "enum") <|> Right <$> (o .: "enum"))
    parseTypedEnum o = do
        -- If there is an "allOf" and "enum" and the allOf array is a single
        -- schema that succeeds parseRef, then we can treat this as a typed enum
        allOf <- o .:? "allOf"
        enum <- Left <$> (o .: "enum") <|> Right <$> (o .: "enum")
        case (allOf, enum) of
            (Just [schema], eVal) -> case parseEither parseRef schema of
                Right (RefSchema ref) -> return $ TypedEnumSchema (ParsedSchemaTypedEnum (parsedSchemaRef ref) eVal)
                _ -> fail "allOf array did not contain a single $ref schema"
            _ -> fail "Not a typed enum"
    parseAnyOf o = do
        schemas <- o .: "anyOf"
        (containsNull, nonNullSchemas) <- mapM parseSchema schemas >>= \parsedSchemas -> pure (any isRawTypeNullSchema parsedSchemas, filter (not . isRawTypeNullSchema) parsedSchemas)
        if containsNull then do
            -- Call function recursively with the null anyOf entry removed and
            -- wrap in a NullableSchema
            case nonNullSchemas of
                -- Special case for a single non-null schema, we cut out the
                -- anyOf
                [schema] -> pure $ NullableSchema schema
                _ -> NullableSchema . AnyOfSchema <$> forM (zip [0..] nonNullSchemas) (\(i, parsed) -> flip (<?>) (Index i) $ do
                    return ("", parsed)) -- We don't have a name for these schemas, so we use an empty string
            else
                AnyOfSchema <$> forM (zip [0..] schemas) (\(i, s) -> flip (<?>) (Index i) $ do
                    parsed <- parseSchema s
                    return ("", parsed)) -- We don't have a name for these schemas, so we use an empty string
    parseAllOf o = do
        schemas <- o .: "allOf"
        AllOfSchema <$> forM (zip [0..] schemas) (\(i, s) -> flip (<?>) (Index i) $ do
            parsed <- parseSchema s
            return ("", parsed))
    parseOneOf o = do
        schemas <- o .: "oneOf"
        (containsNull, nonNullSchemas) <- mapM parseSchema schemas >>= \parsedSchemas -> pure (any isRawTypeNullSchema parsedSchemas, filter (not . isRawTypeNullSchema) parsedSchemas)
        if containsNull then do
            case nonNullSchemas of
                [schema] -> pure $ NullableSchema schema
                _ -> NullableSchema . AnyOfSchema <$> forM (zip [0..] nonNullSchemas) (\(i, parsed) -> flip (<?>) (Index i) $ do
                    return ("", parsed))
            else
                OneOfSchema <$> forM (zip [0..] schemas) (\(i, s) -> flip (<?>) (Index i) $ do
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

        if "null" `elem` types then do
            let nonNullTypes = filter (/= "null") types
            case nonNullTypes of
                [t] -> do
                    let schemaObj = insert "type" (Data.Aeson.Types.String (T.pack t)) o
                    NullableSchema <$> parseSchema schemaObj
                _ -> NullableSchema . AnyOfSchema <$> forM nonNullTypes (\t -> flip (<?>) (Key $ fromString t) $ do
                    let schemaObj = insert "type" (Data.Aeson.Types.String (T.pack t)) o
                    parsedSchema <- parseSchema schemaObj
                    return ("", parsedSchema))
        else do
            AnyOfSchema <$> forM types (\t -> flip (<?>) (Key $ fromString t) $ do
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

-- | @convert@ takes a map of schemas and flattens them into a single map of
-- schemas, where each schema is a "flat" schema, i.e. no nested schemas.
convert :: StrictMap.Map String ParsedSchema -> StrictMap.Map String ParsedSchema
convert schemas = foldl' (\acc (name, schema) -> flattenSchema name schema acc) StrictMap.empty (StrictMap.toList schemas)

-- | @flattenSchema@ takes a schema (and it's name) and flattens it by
-- recursing through the schema and assigning any nested schemas a unique name
-- and adding them to the accumulator map. As the newly created schemas are only
-- referenced by the parent schema, the unique naming scheme can be whatever we
-- want. We pick it based on the parent schema's name and de-duplicate if it
-- exists already.
flattenSchema :: String -> ParsedSchema -> StrictMap.Map String ParsedSchema -> StrictMap.Map String ParsedSchema
flattenSchema name EmptySchema acc = snd $ insertDeduplicate name EmptySchema acc
flattenSchema name sch@(NullableSchema (RefSchema _ref)) acc = snd $ insertDeduplicate name sch acc
flattenSchema name (NullableSchema innerSchema) acc
    | isJust (schemaToSimpleHaskellType innerSchema) = snd $ insertDeduplicate name (NullableSchema innerSchema) acc
    | otherwise =
        let accWithFlattenedInner = flattenSchema (name ++ "NullableInner") innerSchema acc
        in snd $ insertDeduplicate name (NullableSchema (RefSchema (ParsedSchemaRef (name ++ "NullableInner")))) accWithFlattenedInner
flattenSchema name sch@(RefSchema _ref) acc = snd $ insertDeduplicate name sch acc
flattenSchema name sch@(ConstSchema _const) acc = snd $ insertDeduplicate name sch acc
flattenSchema name sch@(RawTypeSchema _rawType) acc = snd $ insertDeduplicate name sch acc
flattenSchema name sch@(EnumSchema _enum) acc = snd $ insertDeduplicate name sch acc
flattenSchema name sch@(TypedEnumSchema _typedEnum) acc = snd $ insertDeduplicate name sch acc
flattenSchema name sch@(IntegerSchema _intSchema) acc = snd $ insertDeduplicate name sch acc
flattenSchema name sch@(ArraySchema (ParsedSchemaArray items minItems maxItems)) acc
    | isJust (schemaToSimpleHaskellType items) = snd $ insertDeduplicate name sch acc
    | otherwise =
        -- For arrays, flatten every child schema - then replace the items in the main
        -- schema with a reference to the new generated child ref.
            let accWithFlattenedItems = flattenSchema (name ++ "Item") items acc
            in snd $ insertDeduplicate name (ArraySchema (ParsedSchemaArray (RefSchema (ParsedSchemaRef (name ++ "Item"))) minItems maxItems)) accWithFlattenedItems
-- For objects, flatten every property schema except if they are refs already,
-- then replace the main schema with references to them.
flattenSchema name (ObjectSchema (ParsedSchemaObject properties required)) acc =
    let (newProperties, accWithFlattenedProps) = foldl' (\(propsAcc, accAcc) (propName, propSchema) ->
            let newPropName = name ++ capitalize propName
                accWithFlattenedProp = flattenSchema newPropName propSchema accAcc
            in if isJust (schemaToSimpleHaskellType propSchema)
                then (propsAcc ++ [(propName, propSchema)], accAcc)
                else (propsAcc ++ [(propName, RefSchema (ParsedSchemaRef newPropName))], accWithFlattenedProp)
            ) ([], acc) properties
    in snd $ insertDeduplicate name (ObjectSchema (ParsedSchemaObject newProperties required)) accWithFlattenedProps
-- For anyOf, allOf, oneOf, flatten every child schema if it's not a ref, then
-- replace the main schema with references to them.
flattenSchema name (AnyOfSchema schemas) acc =
    let (newSchemas, accWithFlattenedSchemas) = foldl' (\(schemasAcc, accAcc) (i, schema) ->
            let newSchemaName = name ++ "AnyOf" ++ show i
                accWithFlattenedSchema = flattenSchema newSchemaName schema accAcc
            in if isJust (schemaToSimpleHaskellType schema)
                then (schemasAcc ++ [(show i, schema)], accAcc)
                else (schemasAcc ++ [(show i, RefSchema (ParsedSchemaRef newSchemaName))], accWithFlattenedSchema)
            ) ([], acc) (zip [(0 :: Integer)..] $ map snd schemas)
    in snd $ insertDeduplicate name (AnyOfSchema newSchemas) accWithFlattenedSchemas
flattenSchema name (AllOfSchema schemas) acc =
    let (newSchemas, accWithFlattenedSchemas) = foldl' (\(schemasAcc, accAcc) (i, schema) ->
            let newSchemaName = name ++ "AllOf" ++ show i
                accWithFlattenedSchema = flattenSchema newSchemaName schema accAcc
            in if isJust (schemaToSimpleHaskellType schema)
                then (schemasAcc ++ [(show i, schema)], accAcc)
                else (schemasAcc ++ [(show i, RefSchema (ParsedSchemaRef newSchemaName))], accWithFlattenedSchema)
            ) ([], acc) (zip [(0 :: Integer)..] $ map snd schemas)
    in snd $ insertDeduplicate name (AllOfSchema newSchemas) accWithFlattenedSchemas
flattenSchema name (OneOfSchema schemas) acc =
    let (newSchemas, accWithFlattenedSchemas) = foldl' (\(schemasAcc, accAcc) (i, schema) ->
            let newSchemaName = name ++ "OneOf" ++ show i
                accWithFlattenedSchema = flattenSchema newSchemaName schema accAcc
            in if isJust (schemaToSimpleHaskellType schema)
                then (schemasAcc ++ [(show i, schema)], accAcc)
                else (schemasAcc ++ [(show i, RefSchema (ParsedSchemaRef newSchemaName))], accWithFlattenedSchema)
            ) ([], acc) (zip [(0 :: Integer)..] $ map snd schemas)
    in snd $ insertDeduplicate name (OneOfSchema newSchemas) accWithFlattenedSchemas

-- | @insertDeduplicate@ takes a key/value to insert into a map, and if the key
-- already exists, will append a suffix to the key. The return value is the
-- chosen key and the updaterd map.
insertDeduplicate :: String -> ParsedSchema -> StrictMap.Map String ParsedSchema -> (String, StrictMap.Map String ParsedSchema)
insertDeduplicate name schema acc =
    let newName = if StrictMap.member name acc
                    then head $ NE.fromList [name ++ "_" ++ show i | i <- [(1 :: Integer)..], not (StrictMap.member (name ++ "_" ++ show i) acc)]
                    else name
    in (newName, StrictMap.insert newName schema acc)

isRefSchema :: ParsedSchema -> Bool
isRefSchema (RefSchema _) = True
isRefSchema _ = False

isConstSchema :: ParsedSchema -> Bool
isConstSchema (ConstSchema _) = True
isConstSchema _ = False

isRawTypeNullSchema :: ParsedSchema -> Bool
isRawTypeNullSchema (RawTypeSchema (ParsedSchemaRawType "null")) = True
isRawTypeNullSchema _ = False

isFlatSchema :: ParsedSchema -> Bool
isFlatSchema (RefSchema _) = True
isFlatSchema (ConstSchema _) = True
isFlatSchema (RawTypeSchema _) = True
isFlatSchema (EnumSchema _) = True
isFlatSchema (TypedEnumSchema _) = True
isFlatSchema (IntegerSchema _) = True
isFlatSchema (ArraySchema (ParsedSchemaArray (RefSchema _) _ _)) = True
isFlatSchema (ArraySchema _) = False
isFlatSchema (ObjectSchema (ParsedSchemaObject properties _)) = all (isRefSchema . snd) properties
isFlatSchema (AnyOfSchema schemas) = all (isRefSchema . snd) schemas
isFlatSchema (AllOfSchema schemas) = all (isRefSchema . snd) schemas
isFlatSchema (OneOfSchema schemas) = all (isRefSchema . snd) schemas
isFlatSchema EmptySchema = True
isFlatSchema (NullableSchema (RefSchema _)) = True
isFlatSchema (NullableSchema _) = False

isFlatishSchema :: ParsedSchema -> Bool
isFlatishSchema (RefSchema _) = True
isFlatishSchema (ConstSchema _) = True
isFlatishSchema (RawTypeSchema _) = True
isFlatishSchema (EnumSchema _) = True
isFlatishSchema (TypedEnumSchema _) = True
isFlatishSchema (IntegerSchema _) = True
isFlatishSchema (ArraySchema (ParsedSchemaArray items _ _))
    | isJust (schemaToSimpleHaskellType items) = True
    | otherwise = False
isFlatishSchema (ObjectSchema (ParsedSchemaObject properties _)) = all (isJust . schemaToSimpleHaskellType . snd) properties
isFlatishSchema (AnyOfSchema schemas) = all (isJust . schemaToSimpleHaskellType . snd) schemas
isFlatishSchema (AllOfSchema schemas) = all (isJust . schemaToSimpleHaskellType . snd) schemas
isFlatishSchema (OneOfSchema schemas) = all (isJust . schemaToSimpleHaskellType . snd) schemas
isFlatishSchema EmptySchema = True
isFlatishSchema (NullableSchema innerSchema) = isJust (schemaToSimpleHaskellType innerSchema)

capitalize :: String -> String
capitalize [] = []
capitalize (x:xs) = toUpper x : xs

schemaToHaskellDeclaration :: String -> ParsedSchema -> String
schemaToHaskellDeclaration _ (RefSchema _) = error "Only way this can happen is if the original OpenAPI doc has a top-level ref schema"
schemaToHaskellDeclaration name (NullableSchema flattish) = "newtype " ++ name ++ " = " ++ name ++ " (Maybe " ++ fromJust (schemaToSimpleHaskellType flattish) ++ ")"
schemaToHaskellDeclaration name (ConstSchema (ParsedSchemaConstant constValue)) = "newtype " ++ name ++ " = " ++ name ++ " " ++ newValidName constValue
schemaToHaskellDeclaration name flattish@(RawTypeSchema _) = "newtype " ++ name ++ " = " ++ name ++ " " ++ fromJust (schemaToSimpleHaskellType flattish)
schemaToHaskellDeclaration name (EnumSchema (ParsedSchemaEnum (Left values))) =
    "data " ++ name ++ " = " ++ intercalate " | " (map capitalize values)
schemaToHaskellDeclaration name (EnumSchema (ParsedSchemaEnum (Right values))) =
    "data " ++ name ++ " = " ++ intercalate " | " (map (((name ++ "Enum") ++) . show) values)
schemaToHaskellDeclaration name flattish@(TypedEnumSchema _) = "newtype " ++ name ++ " = " ++ name ++ " " ++ fromJust (schemaToSimpleHaskellType flattish)
schemaToHaskellDeclaration name flattish@(IntegerSchema _) = "newtype " ++ name ++ " = " ++ name ++ " " ++ fromJust (schemaToSimpleHaskellType flattish)
schemaToHaskellDeclaration name (ArraySchema (ParsedSchemaArray flattish _min _max)) =
    "newtype " ++ name ++ " = " ++ name ++ " [" ++ fromJust (schemaToSimpleHaskellType flattish) ++ "]"
schemaToHaskellDeclaration name (ObjectSchema (ParsedSchemaObject properties _)) =
    "data " ++ name ++ " = " ++ name ++ "\n    { " ++ intercalate "\n    , " (map (\(propName, propSchema) -> apostrophizeIfKeyword propName ++ " :: " ++ case schemaToSimpleHaskellType propSchema of
        Just t -> t
        Nothing -> error "Input was not flatted enough...!") properties) ++ "\n    }"
schemaToHaskellDeclaration name (AnyOfSchema schemas)
    | all (isConstSchema . snd) schemas = "data " ++ name ++ " = " ++ intercalate " | " (map (\schema -> case snd schema of
        sch@(ConstSchema _) -> (name ++ ) $ fromJust $ schemaToSimpleHaskellType sch
        _ -> error "Input was not flatted enough...!") schemas)
    | otherwise = "data " ++ name ++ " = " ++ intercalate " | " (zipWith (\i schema -> (
        case schemaToSimpleHaskellType schema of
            Just t -> name ++ show i ++ " " ++ t
            Nothing -> error "Input was not flatted enough...!")) [(0 :: Integer)..] (map snd schemas))
schemaToHaskellDeclaration name (AllOfSchema schemas) = "data " ++ name ++ " = " ++ name ++"\n    { " ++ intercalate "\n    , " (zipWith (\_i schema
  -> (case schemaToSimpleHaskellType schema of
        Just t -> t
        Nothing -> error "Input was not flatted enough...!")) [(0 :: Integer)..] (map snd schemas)) ++ "\n    }"
schemaToHaskellDeclaration name (OneOfSchema schemas)
    | all (isConstSchema . snd) schemas = "data " ++ name ++ " = " ++ intercalate " | " (map (\schema -> case snd schema of
        sch@(ConstSchema _) -> (name ++ ) $ fromJust $ schemaToSimpleHaskellType sch
        _ -> error "Input was not flatted enough...!") schemas)
    | otherwise = "data " ++ name ++ " = " ++ intercalate " | " (zipWith (\i schema -> (
        case schemaToSimpleHaskellType schema of
            Just t -> name ++ show i ++ " " ++ t
            Nothing -> error "Input was not flatted enough...!")) [(0 :: Integer)..] (map snd schemas))
schemaToHaskellDeclaration name EmptySchema = "data " ++ name ++ " = " ++ name

haskellKeywords :: [String]
haskellKeywords = ["type", "data", "default"]

apostrophizeIfKeyword :: String -> String
apostrophizeIfKeyword name = if name `elem` haskellKeywords then name ++ "'" else name

-- | First char must be uppercase letter. Rest can be digits, letters or apostrophe.
replaceInvalidChars :: String -> String
replaceInvalidChars [] = []
replaceInvalidChars (x:xs)
    | isAlpha x = toUpper x : map replaceInvalid xs
    | otherwise = 'A' : map replaceInvalid (x:xs)
  where
    replaceInvalid c
        | isAlphaNum c || c == '\'' = c
        | otherwise = '_'

newValidName :: String -> String
newValidName name = replaceInvalidChars $ apostrophizeIfKeyword $ capitalize name

schemaToSimpleHaskellType :: ParsedSchema -> Maybe String
schemaToSimpleHaskellType (RefSchema (ParsedSchemaRef ref)) = Just ref
schemaToSimpleHaskellType (NullableSchema (RefSchema (ParsedSchemaRef ref))) = Just $ "Maybe " ++ ref
schemaToSimpleHaskellType (ConstSchema (ParsedSchemaConstant _constValue)) = Just $ newValidName _constValue
schemaToSimpleHaskellType (RawTypeSchema (ParsedSchemaRawType rawType)) = case rawType of
    "string" -> Just "String"
    "number" -> Just "Integer"
    "boolean" -> Just "Bool"
    "null" -> Just "()"
    _ -> Nothing
schemaToSimpleHaskellType (TypedEnumSchema (ParsedSchemaTypedEnum enumType _)) = Just enumType
schemaToSimpleHaskellType (IntegerSchema (ParsedSchemaInteger format _min _max)) = case format of
    Just "int32" -> Just "Int32"
    Just "int64" -> Just "Int64"
    Nothing -> Just "Integer"
    _ -> Nothing
schemaToSimpleHaskellType (ArraySchema (ParsedSchemaArray (RefSchema (ParsedSchemaRef ref)) _min _max)) = Just $ "[" ++ ref ++ "]"
schemaToSimpleHaskellType _ = Nothing

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

    -- We can assume the schemas are unique by name since they are JSON keys
    let schemaMap = StrictMap.fromList schemas
    -- Flatten to ensure everything is a "flat" schema, i.e. no nested schemas.
    let flattenedSchemas = convert schemaMap

    pPrint $ all isFlatishSchema (StrictMap.elems flattenedSchemas)
    pPrint $ not (any isRefSchema (StrictMap.elems flattenedSchemas))

    let haskellDeclarations = map (uncurry schemaToHaskellDeclaration) (StrictMap.toList flattenedSchemas)

    let outputFile = "lib/Muffle/Discord/Generated/Schemas.hs"
    let moduleHeader = "{-# LANGUAGE DuplicateRecordFields #-}\nmodule Muffle.Discord.Generated.Schemas where\n\nimport Data.Int (Int32, Int64)\n\n"
    writeFile outputFile (moduleHeader ++ unlines haskellDeclarations)
