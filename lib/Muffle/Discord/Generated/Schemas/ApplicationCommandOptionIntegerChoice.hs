{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandOptionIntegerChoice where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.Int53Type

data ApplicationCommandOptionIntegerChoice = ApplicationCommandOptionIntegerChoice
    { name :: String
    , nameLocalizations :: Maybe ApplicationCommandOptionIntegerChoiceNameLocalizationsNullableInner
    , value :: Int53Type
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandOptionIntegerChoice where
    parseJSON = withObject "ApplicationCommandOptionIntegerChoice" $ \o ->
        ApplicationCommandOptionIntegerChoice <$>
            o .: "name"
            <*> o .: "name_localizations"
            <*> o .: "value"

newtype ApplicationCommandOptionIntegerChoiceNameLocalizationsNullableInner = ApplicationCommandOptionIntegerChoiceNameLocalizationsNullableInner (Maybe ApplicationCommandOptionIntegerChoiceNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandOptionIntegerChoiceNameLocalizationsNullableInner where
    parseJSON v = ApplicationCommandOptionIntegerChoiceNameLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandOptionIntegerChoiceNameLocalizationsNullableInnerNullableInner = ApplicationCommandOptionIntegerChoiceNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandOptionIntegerChoiceNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandOptionIntegerChoiceNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandOptionIntegerChoiceNameLocalizationsNullableInnerNullableInner