{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.EmbeddedActivityInstance where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.GuildChannelLocation
import Muffle.Discord.Generated.Schemas.PrivateChannelLocation

data EmbeddedActivityInstance = EmbeddedActivityInstance
    { applicationId :: SnowflakeType
    , instanceId :: String
    , launchId :: String
    , location :: EmbeddedActivityInstanceLocation
    , users :: [SnowflakeType]
    }
    deriving (Show, Eq, Generic)
data EmbeddedActivityInstanceLocation = EmbeddedActivityInstanceLocation0 GuildChannelLocation | EmbeddedActivityInstanceLocation1 PrivateChannelLocation
    deriving (Show, Eq, Generic)
