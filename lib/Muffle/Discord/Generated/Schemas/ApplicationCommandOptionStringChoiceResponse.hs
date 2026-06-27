{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandOptionStringChoiceResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data ApplicationCommandOptionStringChoiceResponse = ApplicationCommandOptionStringChoiceResponse
    { name :: String
    , nameLocalizations :: Maybe ApplicationCommandOptionStringChoiceResponseNameLocalizationsNullableInner
    , nameLocalized :: Maybe String
    , value :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandOptionStringChoiceResponse where
    parseJSON = withObject "ApplicationCommandOptionStringChoiceResponse" $ \o ->
        ApplicationCommandOptionStringChoiceResponse <$>
            o .: "name"
            <*> o .: "name_localizations"
            <*> o .: "name_localized"
            <*> o .: "value"

newtype ApplicationCommandOptionStringChoiceResponseNameLocalizationsNullableInner = ApplicationCommandOptionStringChoiceResponseNameLocalizationsNullableInner (Maybe ApplicationCommandOptionStringChoiceResponseNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandOptionStringChoiceResponseNameLocalizationsNullableInner where
    parseJSON v = ApplicationCommandOptionStringChoiceResponseNameLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandOptionStringChoiceResponseNameLocalizationsNullableInnerNullableInner = ApplicationCommandOptionStringChoiceResponseNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandOptionStringChoiceResponseNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandOptionStringChoiceResponseNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandOptionStringChoiceResponseNameLocalizationsNullableInnerNullableInner