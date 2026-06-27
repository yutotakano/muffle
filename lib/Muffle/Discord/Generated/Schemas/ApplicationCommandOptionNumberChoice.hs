{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandOptionNumberChoice where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data ApplicationCommandOptionNumberChoice = ApplicationCommandOptionNumberChoice
    { name :: String
    , nameLocalizations :: Maybe ApplicationCommandOptionNumberChoiceNameLocalizationsNullableInner
    , value :: Integer
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandOptionNumberChoice where
    parseJSON = withObject "ApplicationCommandOptionNumberChoice" $ \o ->
        ApplicationCommandOptionNumberChoice <$>
            o .: "name"
            <*> o .: "name_localizations"
            <*> o .: "value"

newtype ApplicationCommandOptionNumberChoiceNameLocalizationsNullableInner = ApplicationCommandOptionNumberChoiceNameLocalizationsNullableInner (Maybe ApplicationCommandOptionNumberChoiceNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandOptionNumberChoiceNameLocalizationsNullableInner where
    parseJSON v = ApplicationCommandOptionNumberChoiceNameLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandOptionNumberChoiceNameLocalizationsNullableInnerNullableInner = ApplicationCommandOptionNumberChoiceNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandOptionNumberChoiceNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandOptionNumberChoiceNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandOptionNumberChoiceNameLocalizationsNullableInnerNullableInner