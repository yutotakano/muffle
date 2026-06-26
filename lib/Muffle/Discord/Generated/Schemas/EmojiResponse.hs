{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.EmojiResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.UserResponse

data EmojiResponse = EmojiResponse
    { animated :: Bool
    , available :: Bool
    , id :: SnowflakeType
    , managed :: Bool
    , name :: String
    , requireColons :: Bool
    , roles :: [SnowflakeType]
    , user :: UserResponse
    }
    deriving (Show, Eq, Generic)
