{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ChannelPermissionOverwriteRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ChannelPermissionOverwrites

data ChannelPermissionOverwriteRequest = ChannelPermissionOverwriteRequest
    { allow :: Maybe (Maybe Integer)
    , deny :: Maybe (Maybe Integer)
    , id :: SnowflakeType
    , type' :: Maybe (Maybe ChannelPermissionOverwrites)
    }
    deriving (Show, Eq, Generic)
