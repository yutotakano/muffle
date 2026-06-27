{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.InteractionApplicationCommandAutocompleteCallbackStringData where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionStringChoice

data InteractionApplicationCommandAutocompleteCallbackStringData = InteractionApplicationCommandAutocompleteCallbackStringData
    { choices :: Maybe ([Maybe ApplicationCommandOptionStringChoice])
    }
    deriving (Show, Eq, Generic)

instance FromJSON InteractionApplicationCommandAutocompleteCallbackStringData where
    parseJSON = withObject "InteractionApplicationCommandAutocompleteCallbackStringData" $ \o ->
        InteractionApplicationCommandAutocompleteCallbackStringData <$>
            o .: "choices"