{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.RoleSelectComponentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.RoleSelectDefaultValueResponse
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data RoleSelectComponentResponse = RoleSelectComponentResponse
    { customId :: String
    , defaultValues :: [RoleSelectDefaultValueResponse]
    , disabled :: Bool
    , id :: Int32
    , maxValues :: Int32
    , minValues :: Int32
    , placeholder :: String
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)
