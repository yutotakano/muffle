{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.StringSelectComponentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.StringSelectOptionResponse
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data StringSelectComponentResponse = StringSelectComponentResponse
    { customId :: String
    , disabled :: Maybe Bool
    , id :: Int32
    , maxValues :: Int32
    , minValues :: Int32
    , options :: [StringSelectOptionResponse]
    , placeholder :: Maybe String
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)
