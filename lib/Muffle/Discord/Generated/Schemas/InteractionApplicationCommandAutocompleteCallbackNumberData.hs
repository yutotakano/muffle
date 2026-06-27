{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.InteractionApplicationCommandAutocompleteCallbackNumberData where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionNumberChoice

data InteractionApplicationCommandAutocompleteCallbackNumberData = InteractionApplicationCommandAutocompleteCallbackNumberData
    { choices :: Maybe ([Maybe ApplicationCommandOptionNumberChoice])
    }
    deriving (Show, Eq, Generic)

instance FromJSON InteractionApplicationCommandAutocompleteCallbackNumberData where
    parseJSON = withObject "InteractionApplicationCommandAutocompleteCallbackNumberData" $ \o ->
        InteractionApplicationCommandAutocompleteCallbackNumberData <$>
            o .: "choices"