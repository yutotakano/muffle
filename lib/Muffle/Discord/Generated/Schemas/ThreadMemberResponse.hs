{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ThreadMemberResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.GuildMemberResponse

data ThreadMemberResponse = ThreadMemberResponse
    { flags :: Int32
    , id :: SnowflakeType
    , joinTimestamp :: String
    , member :: GuildMemberResponse
    , userId :: SnowflakeType
    }
    deriving (Show, Eq, Generic)
