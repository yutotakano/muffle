{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MyGuildResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.GuildFeatures
import Muffle.Discord.Generated.Schemas.SnowflakeType

data MyGuildResponse = MyGuildResponse
    { approximateMemberCount :: Maybe Int32
    , approximatePresenceCount :: Maybe Int32
    , banner :: Maybe String
    , features :: [GuildFeatures]
    , icon :: Maybe String
    , id :: SnowflakeType
    , name :: String
    , owner :: Bool
    , permissions :: String
    }
    deriving (Show, Eq, Generic)
