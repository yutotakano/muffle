{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.BotAddGuildMemberRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data BotAddGuildMemberRequest = BotAddGuildMemberRequest
    { accessToken :: String
    , deaf :: Maybe Bool
    , flags :: Maybe Integer
    , mute :: Maybe Bool
    , nick :: Maybe String
    , roles :: [SnowflakeType]
    }
    deriving (Show, Eq, Generic)
