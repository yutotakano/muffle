{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandOptionStringChoice where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data ApplicationCommandOptionStringChoice = ApplicationCommandOptionStringChoice
    { name :: String
    , nameLocalizations :: Maybe ApplicationCommandOptionStringChoiceNameLocalizationsNullableInner
    , value :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandOptionStringChoice where
    parseJSON = withObject "ApplicationCommandOptionStringChoice" $ \o ->
        ApplicationCommandOptionStringChoice <$>
            o .: "name"
            <*> o .: "name_localizations"
            <*> o .: "value"

newtype ApplicationCommandOptionStringChoiceNameLocalizationsNullableInner = ApplicationCommandOptionStringChoiceNameLocalizationsNullableInner (Maybe ApplicationCommandOptionStringChoiceNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandOptionStringChoiceNameLocalizationsNullableInner where
    parseJSON v = ApplicationCommandOptionStringChoiceNameLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandOptionStringChoiceNameLocalizationsNullableInnerNullableInner = ApplicationCommandOptionStringChoiceNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandOptionStringChoiceNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandOptionStringChoiceNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandOptionStringChoiceNameLocalizationsNullableInnerNullableInner