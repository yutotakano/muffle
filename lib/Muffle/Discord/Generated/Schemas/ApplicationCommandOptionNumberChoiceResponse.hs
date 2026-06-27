{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandOptionNumberChoiceResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data ApplicationCommandOptionNumberChoiceResponse = ApplicationCommandOptionNumberChoiceResponse
    { name :: String
    , nameLocalizations :: Maybe ApplicationCommandOptionNumberChoiceResponseNameLocalizationsNullableInner
    , nameLocalized :: Maybe String
    , value :: Integer
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandOptionNumberChoiceResponse where
    parseJSON = withObject "ApplicationCommandOptionNumberChoiceResponse" $ \o ->
        ApplicationCommandOptionNumberChoiceResponse <$>
            o .: "name"
            <*> o .: "name_localizations"
            <*> o .: "name_localized"
            <*> o .: "value"

newtype ApplicationCommandOptionNumberChoiceResponseNameLocalizationsNullableInner = ApplicationCommandOptionNumberChoiceResponseNameLocalizationsNullableInner (Maybe ApplicationCommandOptionNumberChoiceResponseNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandOptionNumberChoiceResponseNameLocalizationsNullableInner where
    parseJSON v = ApplicationCommandOptionNumberChoiceResponseNameLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandOptionNumberChoiceResponseNameLocalizationsNullableInnerNullableInner = ApplicationCommandOptionNumberChoiceResponseNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandOptionNumberChoiceResponseNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandOptionNumberChoiceResponseNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandOptionNumberChoiceResponseNameLocalizationsNullableInnerNullableInner