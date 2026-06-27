{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MentionableSelectComponentForModalRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.MessageComponentTypes
import Muffle.Discord.Generated.Schemas.RoleSelectDefaultValue
import Muffle.Discord.Generated.Schemas.UserSelectDefaultValue

data MentionableSelectComponentForModalRequest = MentionableSelectComponentForModalRequest
    { customId :: String
    , defaultValues :: Maybe MentionableSelectComponentForModalRequestDefaultValuesNullableInner
    , disabled :: Maybe (Maybe Bool)
    , id :: Maybe (Maybe Int32)
    , maxValues :: Maybe (Maybe Integer)
    , minValues :: Maybe (Maybe Integer)
    , placeholder :: Maybe (Maybe String)
    , required :: Maybe (Maybe Bool)
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON MentionableSelectComponentForModalRequest where
    parseJSON = withObject "MentionableSelectComponentForModalRequest" $ \o ->
        MentionableSelectComponentForModalRequest <$>
            o .: "custom_id"
            <*> o .: "default_values"
            <*> o .: "disabled"
            <*> o .: "id"
            <*> o .: "max_values"
            <*> o .: "min_values"
            <*> o .: "placeholder"
            <*> o .: "required"
            <*> o .: "type"

newtype MentionableSelectComponentForModalRequestDefaultValuesNullableInner = MentionableSelectComponentForModalRequestDefaultValuesNullableInner [MentionableSelectComponentForModalRequestDefaultValuesNullableInnerItem]
    deriving (Show, Eq, Generic)

instance FromJSON MentionableSelectComponentForModalRequestDefaultValuesNullableInner where
    parseJSON v = MentionableSelectComponentForModalRequestDefaultValuesNullableInner <$> parseJSON v

data MentionableSelectComponentForModalRequestDefaultValuesNullableInnerItem = MentionableSelectComponentForModalRequestDefaultValuesNullableInnerItem0 RoleSelectDefaultValue | MentionableSelectComponentForModalRequestDefaultValuesNullableInnerItem1 UserSelectDefaultValue
    deriving (Show, Eq, Generic)

instance FromJSON MentionableSelectComponentForModalRequestDefaultValuesNullableInnerItem where
    parseJSON v =
        MentionableSelectComponentForModalRequestDefaultValuesNullableInnerItem0 <$> parseJSON v
            <|> MentionableSelectComponentForModalRequestDefaultValuesNullableInnerItem1 <$> parseJSON v