{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MentionableSelectComponentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.MessageComponentTypes
import Muffle.Discord.Generated.Schemas.RoleSelectDefaultValueResponse
import Muffle.Discord.Generated.Schemas.UserSelectDefaultValueResponse

data MentionableSelectComponentResponse = MentionableSelectComponentResponse
    { customId :: String
    , defaultValues :: Maybe MentionableSelectComponentResponseDefaultValuesNullableInner
    , disabled :: Maybe Bool
    , id :: Int32
    , maxValues :: Int32
    , minValues :: Int32
    , placeholder :: Maybe String
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON MentionableSelectComponentResponse where
    parseJSON = withObject "MentionableSelectComponentResponse" $ \o ->
        MentionableSelectComponentResponse <$>
            o .: "custom_id"
            <*> o .: "default_values"
            <*> o .: "disabled"
            <*> o .: "id"
            <*> o .: "max_values"
            <*> o .: "min_values"
            <*> o .: "placeholder"
            <*> o .: "type"

newtype MentionableSelectComponentResponseDefaultValuesNullableInner = MentionableSelectComponentResponseDefaultValuesNullableInner [MentionableSelectComponentResponseDefaultValuesNullableInnerItem]
    deriving (Show, Eq, Generic)

instance FromJSON MentionableSelectComponentResponseDefaultValuesNullableInner where
    parseJSON v = MentionableSelectComponentResponseDefaultValuesNullableInner <$> parseJSON v

data MentionableSelectComponentResponseDefaultValuesNullableInnerItem = MentionableSelectComponentResponseDefaultValuesNullableInnerItem0 RoleSelectDefaultValueResponse | MentionableSelectComponentResponseDefaultValuesNullableInnerItem1 UserSelectDefaultValueResponse
    deriving (Show, Eq, Generic)

instance FromJSON MentionableSelectComponentResponseDefaultValuesNullableInnerItem where
    parseJSON v =
        MentionableSelectComponentResponseDefaultValuesNullableInnerItem0 <$> parseJSON v
            <|> MentionableSelectComponentResponseDefaultValuesNullableInnerItem1 <$> parseJSON v