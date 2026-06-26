{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.InteractionApplicationCommandAutocompleteCallbackIntegerData where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionIntegerChoice

data InteractionApplicationCommandAutocompleteCallbackIntegerData = InteractionApplicationCommandAutocompleteCallbackIntegerData
    { choices :: [Maybe ApplicationCommandOptionIntegerChoice]
    }
    deriving (Show, Eq, Generic)
