{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.InteractionApplicationCommandAutocompleteCallbackIntegerData where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionIntegerChoice

data InteractionApplicationCommandAutocompleteCallbackIntegerData = InteractionApplicationCommandAutocompleteCallbackIntegerData
    { choices :: Maybe ([Maybe ApplicationCommandOptionIntegerChoice])
    }
    deriving (Show, Eq, Generic)

instance FromJSON InteractionApplicationCommandAutocompleteCallbackIntegerData where
    parseJSON = withObject "InteractionApplicationCommandAutocompleteCallbackIntegerData" $ \o ->
        InteractionApplicationCommandAutocompleteCallbackIntegerData <$>
            o .: "choices"