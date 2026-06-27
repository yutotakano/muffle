{-# LANGUAGE MultilineStrings #-}
{-# LANGUAGE OverloadedStrings #-}

{- HLINT ignore "Use newtype instead of data" -}

module Main where

import Control.Applicative ((<|>))
import Control.Monad (forM, forM_)
import Data.Aeson (eitherDecode)
import Data.Aeson.Key (fromString, toString)
import Data.Aeson.KeyMap (insert, keys, lookup, member)
import Data.Aeson.Types (JSONPathElement (..), Object, Parser, parseEither, (.!=), (.:), (.:?), (<?>))
import qualified Data.Aeson.Types (Value (Object, String))
import qualified Data.ByteString.Lazy as BS (readFile)
import Data.Char (isAlpha, isAlphaNum, toLower, toUpper)
import Data.List (intercalate, isInfixOf, nub)
import Data.List.NonEmpty (head)
import qualified Data.List.NonEmpty as NE
import qualified Data.Map.Strict as StrictMap
import Data.Maybe (fromJust, isJust)
import qualified Data.Text as T
import qualified Data.Text.Lazy.IO as TLIO
import System.Directory (createDirectoryIfMissing)
import System.IO (readFile')
import Text.Pretty.Simple (pShowNoColor)
import Prelude hiding (head)

data ParsedSchemaConstant = ParsedSchemaConstant
    { parsedSchemaConst :: String
    }
    deriving Show

data ParsedSchemaEnum = ParsedSchemaEnum
    { parsedSchemaEnum :: Either [String] [Integer]
    }
    deriving Show

data ParsedSchemaTypedEnum = ParsedSchemaTypedEnum
    { parsedSchemaTypedEnumType :: String
    , parsedSchemaTypedEnumValues :: Either [String] [Integer]
    }
    deriving Show

data ParsedSchemaRef = ParsedSchemaRef
    { parsedSchemaRef :: String
    }
    deriving Show

data ParsedSchemaArray = ParsedSchemaArray
    { parsedSchemaArrayItems :: ParsedSchema
    , parsedSchemaArrayMinItems :: Maybe Integer
    , parsedSchemaArrayMaxItems :: Maybe Integer
    }
    deriving Show

data ParsedSchemaInteger = ParsedSchemaInteger
    { parsedSchemaFormat :: Maybe String
    , parsedSchemaIntegerMinimum :: Maybe Integer
    , parsedSchemaIntegerMaximum :: Maybe Integer
    }
    deriving Show

data ParsedSchemaRawType = ParsedSchemaRawType
    { parsedSchemaRawType :: String
    }
    deriving Show

data ParsedSchemaObject = ParsedSchemaObject
    { parsedSchemaObjectProperties :: [(String, ParsedSchema)]
    , parsedSchemaObjectRequired :: [String]
    }
    deriving Show

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
        if containsNull
            then do
                -- Call function recursively with the null anyOf entry removed and
                -- wrap in a NullableSchema
                case nonNullSchemas of
                    -- Special case for a single non-null schema, we cut out the
                    -- anyOf
                    [schema] -> pure $ NullableSchema schema
                    _ ->
                        NullableSchema . AnyOfSchema
                            <$> forM
                                (zip [0 ..] nonNullSchemas)
                                ( \(i, parsed) -> flip (<?>) (Index i) $ do
                                    return ("", parsed) -- We don't have a name for these schemas, so we use an empty string
                                )
            else
                AnyOfSchema
                    <$> forM
                        (zip [0 ..] schemas)
                        ( \(i, s) -> flip (<?>) (Index i) $ do
                            parsed <- parseSchema s
                            return ("", parsed) -- We don't have a name for these schemas, so we use an empty string
                        )
    parseAllOf o = do
        schemas <- o .: "allOf"
        AllOfSchema
            <$> forM
                (zip [0 ..] schemas)
                ( \(i, s) -> flip (<?>) (Index i) $ do
                    parsed <- parseSchema s
                    return ("", parsed)
                )
    parseOneOf o = do
        schemas <- o .: "oneOf"
        (containsNull, nonNullSchemas) <- mapM parseSchema schemas >>= \parsedSchemas -> pure (any isRawTypeNullSchema parsedSchemas, filter (not . isRawTypeNullSchema) parsedSchemas)
        if containsNull
            then do
                case nonNullSchemas of
                    [schema] -> pure $ NullableSchema schema
                    _ ->
                        NullableSchema . AnyOfSchema
                            <$> forM
                                (zip [0 ..] nonNullSchemas)
                                ( \(i, parsed) -> flip (<?>) (Index i) $ do
                                    return ("", parsed)
                                )
            else
                OneOfSchema
                    <$> forM
                        (zip [0 ..] schemas)
                        ( \(i, s) -> flip (<?>) (Index i) $ do
                            parsed <- parseSchema s
                            return ("", parsed)
                        )
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

        if "null" `elem` types
            then do
                let nonNullTypes = filter (/= "null") types
                case nonNullTypes of
                    [t] -> do
                        let schemaObj = insert "type" (Data.Aeson.Types.String (T.pack t)) o
                        NullableSchema <$> parseSchema schemaObj
                    _ ->
                        NullableSchema . AnyOfSchema
                            <$> forM
                                nonNullTypes
                                ( \t -> flip (<?>) (Key $ fromString t) $ do
                                    let schemaObj = insert "type" (Data.Aeson.Types.String (T.pack t)) o
                                    parsedSchema <- parseSchema schemaObj
                                    return ("", parsedSchema)
                                )
            else do
                AnyOfSchema
                    <$> forM
                        types
                        ( \t -> flip (<?>) (Key $ fromString t) $ do
                            let schemaObj = insert "type" (Data.Aeson.Types.String (T.pack t)) o
                            parsedSchema <- parseSchema schemaObj
                            return ("", parsedSchema)
                        )

parseSchemas :: Object -> Parser [(String, ParsedSchema)]
parseSchemas obj = do
    components <- obj .: "components"
    schemasObj <- components .: "schemas"
    let schemaNames = keys schemasObj
    forM schemaNames $ \k -> flip (<?>) (Key k) $ do
        schemaObj <- schemasObj .: k
        schema <- parseSchema schemaObj
        return (toString k, schema)

{- | @convert@ takes a map of schemas and flattens them into a single map of
schemas, where each schema is a "flat" schema, i.e. no nested schemas.
-}
convert :: StrictMap.Map String ParsedSchema -> StrictMap.Map String ParsedSchema
convert schemas = foldl' (\acc (name, schema) -> flattenSchema name schema acc) StrictMap.empty (StrictMap.toList schemas)

{- | @flattenSchema@ takes a schema (and it's name) and flattens it by
recursing through the schema and assigning any nested schemas a unique name
and adding them to the accumulator map. As the newly created schemas are only
referenced by the parent schema, the unique naming scheme can be whatever we
want. We pick it based on the parent schema's name and de-duplicate if it
exists already.
-}
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
    let (newProperties, accWithFlattenedProps) =
            foldl'
                ( \(propsAcc, accAcc) (propName, propSchema) ->
                    let newPropName = name ++ newValidConstructorName propName
                        -- Special case for object keys with only type: null
                        -- subschema, this should be treated as
                        -- Nullable (RawType "null") instead of just RawType "null".
                        processedPropSchema = if isRawTypeNullSchema propSchema || propName `notElem` required then NullableSchema propSchema else propSchema

                        accWithFlattenedProp = flattenSchema newPropName processedPropSchema accAcc
                        -- Simulate insertion to get de-duplicated name
                        nameOfMainSchemaInFlattened = fst $ insertDeduplicate newPropName undefined accAcc
                        mainSchemaInFlattened = fromJust $ StrictMap.lookup nameOfMainSchemaInFlattened accWithFlattenedProp
                     in if isJust (schemaToSimpleHaskellType processedPropSchema)
                            then (propsAcc ++ [(propName, processedPropSchema)], accAcc)
                            -- If the flattened schema became simple enough, use that.
                            -- Remove from the accumulator.
                            else
                                if isJust (schemaToSimpleHaskellType mainSchemaInFlattened)
                                    then (propsAcc ++ [(propName, mainSchemaInFlattened)], StrictMap.delete nameOfMainSchemaInFlattened accWithFlattenedProp)
                                    else (propsAcc ++ [(propName, RefSchema (ParsedSchemaRef newPropName))], accWithFlattenedProp)
                )
                ([], acc)
                properties
     in snd $ insertDeduplicate name (ObjectSchema (ParsedSchemaObject newProperties required)) accWithFlattenedProps
-- For anyOf, allOf, oneOf, flatten every child schema if it's not a ref, then
-- replace the main schema with references to them.
flattenSchema name (AnyOfSchema schemas) acc =
    let (newSchemas, accWithFlattenedSchemas) =
            foldl'
                ( \(schemasAcc, accAcc) (i, schema) ->
                    let newSchemaName = name ++ "AnyOf" ++ show i
                        accWithFlattenedSchema = flattenSchema newSchemaName schema accAcc
                     in if isJust (schemaToSimpleHaskellType schema)
                            then (schemasAcc ++ [(show i, schema)], accAcc)
                            else (schemasAcc ++ [(show i, RefSchema (ParsedSchemaRef newSchemaName))], accWithFlattenedSchema)
                )
                ([], acc)
                (zip [(0 :: Integer) ..] $ map snd schemas)
     in snd $ insertDeduplicate name (AnyOfSchema newSchemas) accWithFlattenedSchemas
flattenSchema name (AllOfSchema schemas) acc =
    let (newSchemas, accWithFlattenedSchemas) =
            foldl'
                ( \(schemasAcc, accAcc) (i, schema) ->
                    let newSchemaName = name ++ "AllOf" ++ show i
                        accWithFlattenedSchema = flattenSchema newSchemaName schema accAcc
                     in if isJust (schemaToSimpleHaskellType schema)
                            then (schemasAcc ++ [(show i, schema)], accAcc)
                            else (schemasAcc ++ [(show i, RefSchema (ParsedSchemaRef newSchemaName))], accWithFlattenedSchema)
                )
                ([], acc)
                (zip [(0 :: Integer) ..] $ map snd schemas)
     in snd $ insertDeduplicate name (AllOfSchema newSchemas) accWithFlattenedSchemas
flattenSchema name (OneOfSchema schemas) acc =
    let (newSchemas, accWithFlattenedSchemas) =
            foldl'
                ( \(schemasAcc, accAcc) (i, schema) ->
                    let newSchemaName = name ++ "OneOf" ++ show i
                        accWithFlattenedSchema = flattenSchema newSchemaName schema accAcc
                     in if isJust (schemaToSimpleHaskellType schema)
                            then (schemasAcc ++ [(show i, schema)], accAcc)
                            else (schemasAcc ++ [(show i, RefSchema (ParsedSchemaRef newSchemaName))], accWithFlattenedSchema)
                )
                ([], acc)
                (zip [(0 :: Integer) ..] $ map snd schemas)
     in snd $ insertDeduplicate name (OneOfSchema newSchemas) accWithFlattenedSchemas

{- | @insertDeduplicate@ takes a key/value to insert into a map, and if the key
already exists, will append a suffix to the key. The return value is the
chosen key and the updaterd map.
-}
insertDeduplicate :: String -> ParsedSchema -> StrictMap.Map String ParsedSchema -> (String, StrictMap.Map String ParsedSchema)
insertDeduplicate name schema acc =
    let newName =
            if StrictMap.member name acc
                then head $ NE.fromList [name ++ "_" ++ show i | i <- [(1 :: Integer) ..], not (StrictMap.member (name ++ "_" ++ show i) acc)]
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

capitalize :: String -> String
capitalize [] = []
capitalize (x : xs) = toUpper x : xs

derivings :: String
derivings = "\n    deriving (Show, Eq, Generic)"

schemaToHaskellDeclaration :: String -> ParsedSchema -> String
schemaToHaskellDeclaration _ (RefSchema _) = error "Only way this can happen is if the original OpenAPI doc has a top-level ref schema"
schemaToHaskellDeclaration name (NullableSchema flattish) = "newtype " ++ name ++ " = " ++ newValidConstructorName name ++ " (Maybe " ++ fromJust (schemaToSimpleHaskellType flattish) ++ ")"
schemaToHaskellDeclaration name (ConstSchema (ParsedSchemaConstant constValue)) = "newtype " ++ name ++ " = " ++ newValidConstructorName name ++ " " ++ newValidConstructorName constValue
schemaToHaskellDeclaration name flattish@(RawTypeSchema _) = "newtype " ++ name ++ " = " ++ newValidConstructorName name ++ " " ++ fromJust (schemaToSimpleHaskellType flattish)
schemaToHaskellDeclaration name (EnumSchema (ParsedSchemaEnum (Left values))) =
    "data " ++ name ++ " = " ++ intercalate " | " (map capitalize values)
schemaToHaskellDeclaration name (EnumSchema (ParsedSchemaEnum (Right values))) =
    "data " ++ name ++ " = " ++ intercalate " | " (map (((name ++ "Enum") ++) . show) values)
schemaToHaskellDeclaration name flattish@(TypedEnumSchema _) = "newtype " ++ name ++ " = " ++ newValidConstructorName name ++ " " ++ fromJust (schemaToSimpleHaskellType flattish)
schemaToHaskellDeclaration name flattish@(IntegerSchema _) = "newtype " ++ name ++ " = " ++ newValidConstructorName name ++ " " ++ fromJust (schemaToSimpleHaskellType flattish)
schemaToHaskellDeclaration name (ArraySchema (ParsedSchemaArray flattish _min _max)) =
    "newtype " ++ name ++ " = " ++ newValidConstructorName name ++ " [" ++ fromJust (schemaToSimpleHaskellType flattish) ++ "]"
schemaToHaskellDeclaration name (ObjectSchema (ParsedSchemaObject [] _)) =
    "data " ++ name ++ " = " ++ newValidConstructorName name
schemaToHaskellDeclaration name (ObjectSchema (ParsedSchemaObject properties _)) =
    "data "
        ++ name
        ++ " = "
        ++ newValidConstructorName name
        ++ "\n    { "
        ++ intercalate
            "\n    , "
            ( map
                ( \(propName, propSchema) ->
                    newValidIdentifierName propName ++ " :: " ++ case schemaToSimpleHaskellType propSchema of
                        Just t -> t
                        Nothing -> error "Input was not flatted enough...!"
                )
                properties
            )
        ++ "\n    }"
schemaToHaskellDeclaration name (AnyOfSchema schemas)
    | all (isConstSchema . snd) schemas =
        "data "
            ++ name
            ++ " = "
            ++ intercalate
                " | "
                ( map
                    ( \schema -> case snd schema of
                        sch@(ConstSchema _) -> (name ++) $ fromJust $ schemaToSimpleHaskellType sch
                        _ -> error "Input was not flatted enough...!"
                    )
                    schemas
                )
    | otherwise =
        "data "
            ++ name
            ++ " = "
            ++ intercalate
                " | "
                ( zipWith
                    ( \i schema ->
                        ( case schemaToSimpleHaskellType schema of
                            Just t -> name ++ show i ++ " " ++ t
                            Nothing -> error "Input was not flatted enough...!"
                        )
                    )
                    [(0 :: Integer) ..]
                    (map snd schemas)
                )
schemaToHaskellDeclaration name (AllOfSchema schemas) =
    "data "
        ++ name
        ++ " = "
        ++ name
        ++ "\n    { "
        ++ intercalate
            "\n    , "
            ( zipWith
                ( \_i schema ->
                    ( case schemaToSimpleHaskellType schema of
                        Just t -> t
                        Nothing -> error "Input was not flatted enough...!"
                    )
                )
                [(0 :: Integer) ..]
                (map snd schemas)
            )
        ++ "\n    }"
schemaToHaskellDeclaration name (OneOfSchema schemas)
    | all (isConstSchema . snd) schemas =
        "data "
            ++ name
            ++ " = "
            ++ intercalate
                " | "
                ( map
                    ( \schema -> case snd schema of
                        sch@(ConstSchema _) -> (name ++) $ fromJust $ schemaToSimpleHaskellType sch
                        _ -> error "Input was not flatted enough...!"
                    )
                    schemas
                )
    | otherwise =
        "data "
            ++ name
            ++ " = "
            ++ intercalate
                " | "
                ( zipWith
                    ( \i schema ->
                        ( case schemaToSimpleHaskellType schema of
                            Just t -> name ++ show i ++ " " ++ t
                            Nothing -> error "Input was not flatted enough...!"
                        )
                    )
                    [(0 :: Integer) ..]
                    (map snd schemas)
                )
schemaToHaskellDeclaration name EmptySchema = "data " ++ name ++ " = " ++ name

replace :: String -> String -> String -> String
replace old new = T.unpack . T.replace (T.pack old) (T.pack new) . T.pack

{- | Given a parsed schema that's about to become a Haskell declaration, return
the corresponding FromJSON instance declaration for it.
-}
schemaToHaskellFromJSONInstance :: String -> ParsedSchema -> String
schemaToHaskellFromJSONInstance _ (RefSchema _) = error "Only way this can happen is if the original OpenAPI doc has a top-level ref schema"
schemaToHaskellFromJSONInstance name (NullableSchema _) =
    replace "${typename}" name $
        replace
            "${constructorname}"
            (newValidConstructorName name)
            """
            instance FromJSON ${typename} where
                parseJSON v = ${constructorname} <$> parseJSON v
            """
schemaToHaskellFromJSONInstance name (ConstSchema (ParsedSchemaConstant constValue)) =
    replace "${typename}" name $
        replace "${constValue}" constValue $
            replace "${constructorname}" (newValidConstructorName name) $
                replace
                    "${constructorValue}"
                    (newValidConstructorName constValue)
                    """
                    instance FromJSON ${typename} where
                        parseJSON (String s) | s == ${constValue} = pure (${constructorname} ${constructorValue})
                        parseJSON _ = fail "Expected constant value: ${constValue}"
                    """
schemaToHaskellFromJSONInstance name (RawTypeSchema _) =
    replace "${typename}" name $
        replace
            "${constructorname}"
            (newValidConstructorName name)
            """
            instance FromJSON ${typename} where
                parseJSON v = ${constructorname} <$> parseJSON v
            """
schemaToHaskellFromJSONInstance name (EnumSchema (ParsedSchemaEnum (Left values))) =
    replace
        "${typename}"
        name
        """
        instance FromJSON ${typename} where
            parseJSON (String s) = case s of
        """
        ++ concatMap (\v -> "        " ++ show v ++ " -> pure " ++ capitalize v ++ "\n") values
        ++ "        _ -> fail \"Expected one of: "
        ++ intercalate ", " values
        ++ "\""
schemaToHaskellFromJSONInstance name EmptySchema =
    replace
        "${typename}"
        name
        """
        instance FromJSON ${typename} where
            parseJSON _ = fail "Expected empty schema"
        """
schemaToHaskellFromJSONInstance name (EnumSchema (ParsedSchemaEnum (Right values))) =
    replace "${typename}" name $
        replace
            "${commaSepEnumValues}"
            (intercalate ", " (map show values))
            """
            instance FromJSON ${typename} where

            """
            ++ concatMap
                (\v -> "    parseJSON (Number " ++ show v ++ ") = pure " ++ name ++ "Enum" ++ show v ++ "\n")
                values
            ++ "    parseJSON _ = fail \"Expected one of: "
            ++ intercalate ", " (map show values)
            ++ "\""
schemaToHaskellFromJSONInstance name (TypedEnumSchema _) =
    replace "${typename}" name $
        replace
            "${constructorname}"
            (newValidConstructorName name)
            """
            instance FromJSON ${typename} where
                parseJSON v = ${constructorname} <$> parseJSON v
            """
schemaToHaskellFromJSONInstance name (IntegerSchema _) =
    replace "${typename}" name $
        replace
            "${constructorname}"
            (newValidConstructorName name)
            """
            instance FromJSON ${typename} where
                parseJSON v = ${constructorname} <$> parseJSON v
            """
schemaToHaskellFromJSONInstance name (ArraySchema (ParsedSchemaArray _ _min _max)) =
    replace "${typename}" name $
        replace "${constructorname}" (newValidConstructorName name)
            """
            instance FromJSON ${typename} where
                parseJSON v = ${constructorname} <$> parseJSON v
            """
schemaToHaskellFromJSONInstance name (ObjectSchema (ParsedSchemaObject [] _)) =
    replace "${typename}" name $
        replace
            "${constructorname}"
            (newValidConstructorName name)
            """
            instance FromJSON ${typename} where
                parseJSON = withObject "${typename}" $ \\_ -> pure ${constructorname}
            """
schemaToHaskellFromJSONInstance name (ObjectSchema (ParsedSchemaObject properties _)) =
    replace "${typename}" name $
        replace "${constructorname}" (newValidConstructorName name) $
            replace
                "${fieldparsers}"
                (intercalate "\n            <*> " (map (\(propName, propSchema) -> case propSchema of
                    NullableSchema (RawTypeSchema (ParsedSchemaRawType "null")) -> "o .:! " ++ show propName
                    _ -> "o .: " ++ show propName) properties))
                """
                instance FromJSON ${typename} where
                    parseJSON = withObject "${typename}" $ \\o ->
                        ${constructorname} <$>
                            ${fieldparsers}
                """
schemaToHaskellFromJSONInstance name (AnyOfSchema schemas)
    | all (isConstSchema . snd) schemas =
        replace "${typename}" name $
            replace "${constructorname}" (newValidConstructorName name) $
                replace
                    "${cases}"
                    ( intercalate
                        "\n        "
                        ( map
                            ( \schema -> case snd schema of
                                ConstSchema (ParsedSchemaConstant value) -> "\"" ++ value ++ "\" -> pure " ++ name ++ fromJust (schemaToSimpleHaskellType $ snd schema)
                                _ -> error "Input was not flatted enough...!"
                            )
                            schemas
                        )
                    )
                    """
                    instance FromJSON ${typename} where
                        parseJSON v = case v of
                            ${cases}
                            _ -> fail "Expected one of the constant values in the anyOf schema"
                    """
    | otherwise =
        replace "${typename}" name $
            replace "${constructorname}" (newValidConstructorName name) $
                replace
                    "${cases}"
                    (intercalate "\n            <|> " (map (\i -> name ++ show i ++ " <$> parseJSON v") [0 .. toInteger (length schemas) - 1]))
                    """
                    instance FromJSON ${typename} where
                        parseJSON v =
                            ${cases}
                    """
-- todo: allOf is generally wack
schemaToHaskellFromJSONInstance name (AllOfSchema schemas) =
    replace "${typename}" name $
        replace "${constructorname}" (newValidConstructorName name) $
            """
            instance FromJSON ${typename} where
                parseJSON v = case v of
            """
                ++ intercalate
                    "\n        "
                    ( map
                        (\schema -> "_ -> ${constructorname} <$> (parseJSON v :: Parser " ++ fromJust (schemaToSimpleHaskellType $ snd schema) ++ ")")
                        schemas
                    )
                ++ "        _ -> fail \"Expected one of the types in the allOf schema\""
schemaToHaskellFromJSONInstance name (OneOfSchema schemas)
    | all (isConstSchema . snd) schemas =
        replace "${typename}" name
            $ replace "${constructorname}" (newValidConstructorName name)
            $ replace
                "${cases}"
                ( intercalate
                    "\n        "
                    ( map
                        ( \schema -> case snd schema of
                            ConstSchema (ParsedSchemaConstant value) -> "\"" ++ value ++ "\" -> pure " ++ name ++ fromJust (schemaToSimpleHaskellType $ snd schema)
                            _ -> error "Input was not flatted enough...!"
                        )
                        schemas
                    )
                )
            $ replace
                "${failCase}"
                "_ -> fail \"Expected one of the constants in the oneOf schema\""
                """
                instance FromJSON ${typename} where
                    parseJSON v = case v of
                        ${cases}
                        ${failCase}
                """
    | otherwise =
        replace "${typename}" name $
            replace "${constructorname}" (newValidConstructorName name) $
                replace
                    "${cases}"
                    (intercalate "\n            <|> " (map (\i -> name ++ show i ++ " <$> parseJSON v") [0 .. toInteger (length schemas) - 1]))
                    """
                    instance FromJSON ${typename} where
                        parseJSON v =
                            ${cases}
                    """

haskellKeywords :: [String]
haskellKeywords = ["type", "data", "default"]

apostrophizeIfKeyword :: String -> String
apostrophizeIfKeyword name = if name `elem` haskellKeywords then name ++ "'" else name

-- | First char must be uppercase letter. Rest can be digits, letters or apostrophe.
replaceInvalidChars :: String -> String
replaceInvalidChars [] = []
replaceInvalidChars (x : xs)
    | isAlpha x = toUpper x : map replaceInvalid xs
    | otherwise = 'A' : map replaceInvalid (x : xs)
  where
    replaceInvalid c
        | isAlphaNum c || c == '\'' = c
        | otherwise = '_'

camelCase :: String -> String
camelCase [] = []
camelCase (x : xs) = toLower x : go xs
  where
    go [] = []
    go ('_' : y : ys) = toUpper y : go ys
    go (y : ys) = y : go ys

newValidConstructorName :: String -> String
newValidConstructorName name = capitalize $ camelCase $ replaceInvalidChars $ apostrophizeIfKeyword name

newValidIdentifierName :: String -> String
newValidIdentifierName name = camelCase $ replaceInvalidChars $ apostrophizeIfKeyword name

isFlatishSchema :: ParsedSchema -> Bool
isFlatishSchema (RefSchema _) = True
isFlatishSchema (NullableSchema innerSchema) = isJust (schemaToSimpleHaskellType innerSchema)
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

schemaToSimpleHaskellType :: ParsedSchema -> Maybe String
schemaToSimpleHaskellType (RefSchema (ParsedSchemaRef ref)) = Just ref
schemaToSimpleHaskellType (NullableSchema innerSchema) = case schemaToSimpleHaskellType innerSchema of
    Just t -> Just $ if ' ' `elem` t then "Maybe (" ++ t ++ ")" else "Maybe " ++ t
    Nothing -> Nothing
schemaToSimpleHaskellType (ConstSchema (ParsedSchemaConstant _constValue)) = Just $ newValidConstructorName _constValue
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
schemaToSimpleHaskellType (ArraySchema (ParsedSchemaArray innerSchema _min _max)) = case schemaToSimpleHaskellType innerSchema of
    Just t -> Just $ "[" ++ t ++ "]"
    Nothing -> Nothing
schemaToSimpleHaskellType _ = Nothing

{- | Check if a schema is a reference to another schema that is not present in
the map of schemas.
-}
isUnresolvedRef :: ParsedSchema -> StrictMap.Map String ParsedSchema -> Bool
isUnresolvedRef (RefSchema (ParsedSchemaRef ref)) schemas = not $ StrictMap.member ref schemas
isUnresolvedRef (TypedEnumSchema (ParsedSchemaTypedEnum ref _)) schemas = not $ StrictMap.member ref schemas
isUnresolvedRef _ _ = False

listContainedUnresolvedRef :: ParsedSchema -> StrictMap.Map String ParsedSchema -> [String]
listContainedUnresolvedRef schema schemas = case schema of
    RefSchema (ParsedSchemaRef name) -> [name | isUnresolvedRef schema schemas]
    NullableSchema innerSchema -> listContainedUnresolvedRef innerSchema schemas
    ConstSchema _ -> []
    RawTypeSchema _ -> []
    EmptySchema -> []
    EnumSchema _ -> []
    TypedEnumSchema (ParsedSchemaTypedEnum name _) -> [name | isUnresolvedRef schema schemas]
    IntegerSchema _ -> []
    ArraySchema (ParsedSchemaArray innerSchema _min _max) -> listContainedUnresolvedRef innerSchema schemas
    ObjectSchema (ParsedSchemaObject properties _) -> concatMap (\(_, propSchema) -> listContainedUnresolvedRef propSchema schemas) properties
    AnyOfSchema schemasList -> concatMap (\(_, s) -> listContainedUnresolvedRef s schemas) schemasList
    AllOfSchema schemasList -> concatMap (\(_, s) -> listContainedUnresolvedRef s schemas) schemasList
    OneOfSchema schemasList -> concatMap (\(_, s) -> listContainedUnresolvedRef s schemas) schemasList

filterUnresolvedRefs :: StrictMap.Map String ParsedSchema -> [String]
filterUnresolvedRefs schemas = foldl' (\acc (_, schema) -> acc ++ listContainedUnresolvedRef schema schemas) [] (StrictMap.toList schemas)

{- | Takes the content of a cabal file and splits it into two parts:
- the part up to and including -- BEGIN GENERATED MODULES
- and the part after -- END GENERATED MODULES (including the line itself)
-}
splitCabalFileOnGeneratedModules :: [String] -> ([String], [String])
splitCabalFileOnGeneratedModules cabalFileContent =
    let (before, after) = break (isInfixOf "-- BEGIN GENERATED MODULES") cabalFileContent
        after' = dropWhile (not . isInfixOf "-- END GENERATED MODULES") after
     in (before ++ take 1 after, after')

insertGeneratedModulesIntoCabalFile :: FilePath -> [(String, ParsedSchema)] -> IO ()
insertGeneratedModulesIntoCabalFile cabalFilePath schemas = do
    cabalFileContent <- readFile' "muffle.cabal" -- strict
    let (before, after) = splitCabalFileOnGeneratedModules (lines cabalFileContent)
    let newContents = before ++ ["        Muffle.Discord.Generated.Schemas"] ++ ["        Muffle.Discord.Generated.Schemas." ++ name | (name, _) <- schemas] ++ after
    writeFile cabalFilePath (unlines newContents)

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
    -- let schemaMap = StrictMap.fromList schemas

    createDirectoryIfMissing True "lib/Muffle/Discord/Generated/Schemas"

    forM_ schemas $ \(name, topLevelSchema) -> do
        let flattenedSchemas = convert (StrictMap.fromList [(name, topLevelSchema)])

        -- All items should be flat-ish
        -- pPrint $ all isFlatishSchema (StrictMap.elems flattenedSchemas)

        -- All top-level items should not be ref schemas
        -- pPrint $ not (any isRefSchema (StrictMap.elems flattenedSchemas))

        let haskellDeclarations = flip map (StrictMap.toList flattenedSchemas) $ \(subname, schema) ->
                schemaToHaskellDeclaration subname schema ++ derivings ++ "\n\n" ++ schemaToHaskellFromJSONInstance subname schema

        let outputFile = "lib/Muffle/Discord/Generated/Schemas/" ++ name ++ ".hs"
        let intermediateOutputFile = "lib/Muffle/Discord/Generated/Schemas/" ++ name ++ ".hs.txt"

        let otherRefsImport = intercalate "\n" $ map ("import Muffle.Discord.Generated.Schemas." ++) $ nub $ filterUnresolvedRefs flattenedSchemas
        let extensions =
                [ "{-# LANGUAGE DuplicateRecordFields #-}"
                , "{-# LANGUAGE DeriveGeneric #-}"
                , "{-# LANGUAGE OverloadedStrings #-}"
                , "{-# OPTIONS_GHC -Wno-unused-imports #-}"
                ]
        let imports =
                filter
                    (not . null)
                    [ "import Data.Int (Int32, Int64)"
                    , "import GHC.Generics"
                    , "import Data.Aeson hiding (Result(Error))" -- conflicts with Error discord type
                    , "import Control.Applicative ((<|>))"
                    , otherRefsImport
                    ]
        let moduleHeader = intercalate "\n" extensions ++ "\nmodule Muffle.Discord.Generated.Schemas." ++ name ++ " where\n\n" ++ intercalate "\n" imports ++ "\n\n"
        writeFile outputFile (moduleHeader ++ intercalate "\n\n" haskellDeclarations)
        TLIO.writeFile intermediateOutputFile $ pShowNoColor flattenedSchemas

    let importStatements = intercalate "\n" $ map (\(name, _) -> "import Muffle.Discord.Generated.Schemas." ++ name) schemas
    let moduleStatements = intercalate "\n" $ map (\(name, _) -> "    module Muffle.Discord.Generated.Schemas." ++ name ++ ",") schemas
    let allSchemasModuleContent = "{-# LANGUAGE DuplicateRecordFields #-}\nmodule Muffle.Discord.Generated.Schemas (\n" ++ moduleStatements ++ "\n) where\n\n" ++ importStatements ++ "\n"
    writeFile "lib/Muffle/Discord/Generated/Schemas.hs" allSchemasModuleContent

    insertGeneratedModulesIntoCabalFile "muffle.cabal" schemas
