{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.UserSelectComponentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.UserSelectDefaultValueResponse
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data UserSelectComponentResponse = UserSelectComponentResponse
    { customId :: String
    , defaultValues :: [UserSelectDefaultValueResponse]
    , disabled :: Bool
    , id :: Int32
    , maxValues :: Int32
    , minValues :: Int32
    , placeholder :: String
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)
