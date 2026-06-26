{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.PrivateChannelLocation where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.EmbeddedActivityLocationKind

data PrivateChannelLocation = PrivateChannelLocation
    { channelId :: SnowflakeType
    , id :: String
    , kind :: EmbeddedActivityLocationKind
    }
    deriving (Show, Eq, Generic)
