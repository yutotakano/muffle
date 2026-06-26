{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ChannelPermissionOverwriteResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ChannelPermissionOverwrites

data ChannelPermissionOverwriteResponse = ChannelPermissionOverwriteResponse
    { allow :: String
    , deny :: String
    , id :: SnowflakeType
    , type' :: ChannelPermissionOverwrites
    }
    deriving (Show, Eq, Generic)
