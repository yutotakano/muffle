{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.BotAddGuildMemberRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data BotAddGuildMemberRequest = BotAddGuildMemberRequest
    { accessToken :: String
    , deaf :: Maybe (Maybe Bool)
    , flags :: Maybe (Maybe Integer)
    , mute :: Maybe (Maybe Bool)
    , nick :: Maybe (Maybe String)
    , roles :: Maybe [SnowflakeType]
    }
    deriving (Show, Eq, Generic)
