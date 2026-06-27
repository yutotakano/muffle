{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MentionableSelectComponentForMessageRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.MessageComponentTypes
import Muffle.Discord.Generated.Schemas.RoleSelectDefaultValue
import Muffle.Discord.Generated.Schemas.UserSelectDefaultValue

data MentionableSelectComponentForMessageRequest = MentionableSelectComponentForMessageRequest
    { customId :: String
    , defaultValues :: Maybe MentionableSelectComponentForMessageRequestDefaultValuesNullableInner
    , disabled :: Maybe (Maybe Bool)
    , id :: Maybe (Maybe Int32)
    , maxValues :: Maybe (Maybe Integer)
    , minValues :: Maybe (Maybe Integer)
    , placeholder :: Maybe (Maybe String)
    , required :: Maybe (Maybe Bool)
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON MentionableSelectComponentForMessageRequest where
    parseJSON = withObject "MentionableSelectComponentForMessageRequest" $ \o ->
        MentionableSelectComponentForMessageRequest <$>
            o .: "custom_id"
            <*> o .: "default_values"
            <*> o .: "disabled"
            <*> o .: "id"
            <*> o .: "max_values"
            <*> o .: "min_values"
            <*> o .: "placeholder"
            <*> o .: "required"
            <*> o .: "type"

newtype MentionableSelectComponentForMessageRequestDefaultValuesNullableInner = MentionableSelectComponentForMessageRequestDefaultValuesNullableInner [MentionableSelectComponentForMessageRequestDefaultValuesNullableInnerItem]
    deriving (Show, Eq, Generic)

instance FromJSON MentionableSelectComponentForMessageRequestDefaultValuesNullableInner where
    parseJSON v = MentionableSelectComponentForMessageRequestDefaultValuesNullableInner <$> parseJSON v

data MentionableSelectComponentForMessageRequestDefaultValuesNullableInnerItem = MentionableSelectComponentForMessageRequestDefaultValuesNullableInnerItem0 RoleSelectDefaultValue | MentionableSelectComponentForMessageRequestDefaultValuesNullableInnerItem1 UserSelectDefaultValue
    deriving (Show, Eq, Generic)

instance FromJSON MentionableSelectComponentForMessageRequestDefaultValuesNullableInnerItem where
    parseJSON v =
        MentionableSelectComponentForMessageRequestDefaultValuesNullableInnerItem0 <$> parseJSON v
            <|> MentionableSelectComponentForMessageRequestDefaultValuesNullableInnerItem1 <$> parseJSON v