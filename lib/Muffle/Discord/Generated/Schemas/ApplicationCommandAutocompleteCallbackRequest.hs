{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandAutocompleteCallbackRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.InteractionCallbackTypes
import Muffle.Discord.Generated.Schemas.InteractionApplicationCommandAutocompleteCallbackIntegerData
import Muffle.Discord.Generated.Schemas.InteractionApplicationCommandAutocompleteCallbackNumberData
import Muffle.Discord.Generated.Schemas.InteractionApplicationCommandAutocompleteCallbackStringData

data ApplicationCommandAutocompleteCallbackRequest = ApplicationCommandAutocompleteCallbackRequest
    { data' :: ApplicationCommandAutocompleteCallbackRequestData'
    , type' :: InteractionCallbackTypes
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandAutocompleteCallbackRequestData' = ApplicationCommandAutocompleteCallbackRequestData'0 InteractionApplicationCommandAutocompleteCallbackIntegerData | ApplicationCommandAutocompleteCallbackRequestData'1 InteractionApplicationCommandAutocompleteCallbackNumberData | ApplicationCommandAutocompleteCallbackRequestData'2 InteractionApplicationCommandAutocompleteCallbackStringData
    deriving (Show, Eq, Generic)
