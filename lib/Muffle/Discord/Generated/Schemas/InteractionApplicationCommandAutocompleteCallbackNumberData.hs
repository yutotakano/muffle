{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.InteractionApplicationCommandAutocompleteCallbackNumberData where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionNumberChoice

data InteractionApplicationCommandAutocompleteCallbackNumberData = InteractionApplicationCommandAutocompleteCallbackNumberData
    { choices :: [Maybe ApplicationCommandOptionNumberChoice]
    }
    deriving (Show, Eq, Generic)
