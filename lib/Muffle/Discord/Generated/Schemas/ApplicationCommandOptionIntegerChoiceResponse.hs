{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandOptionIntegerChoiceResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.Int53Type

data ApplicationCommandOptionIntegerChoiceResponse = ApplicationCommandOptionIntegerChoiceResponse
    { name :: String
    , nameLocalizations :: Maybe ApplicationCommandOptionIntegerChoiceResponseNameLocalizationsNullableInner
    , nameLocalized :: Maybe String
    , value :: Int53Type
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandOptionIntegerChoiceResponse where
    parseJSON = withObject "ApplicationCommandOptionIntegerChoiceResponse" $ \o ->
        ApplicationCommandOptionIntegerChoiceResponse <$>
            o .: "name"
            <*> o .: "name_localizations"
            <*> o .: "name_localized"
            <*> o .: "value"

newtype ApplicationCommandOptionIntegerChoiceResponseNameLocalizationsNullableInner = ApplicationCommandOptionIntegerChoiceResponseNameLocalizationsNullableInner (Maybe ApplicationCommandOptionIntegerChoiceResponseNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandOptionIntegerChoiceResponseNameLocalizationsNullableInner where
    parseJSON v = ApplicationCommandOptionIntegerChoiceResponseNameLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandOptionIntegerChoiceResponseNameLocalizationsNullableInnerNullableInner = ApplicationCommandOptionIntegerChoiceResponseNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandOptionIntegerChoiceResponseNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandOptionIntegerChoiceResponseNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandOptionIntegerChoiceResponseNameLocalizationsNullableInnerNullableInner