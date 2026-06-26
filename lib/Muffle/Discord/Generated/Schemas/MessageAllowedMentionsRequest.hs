{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MessageAllowedMentionsRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.AllowedMentionTypes
import Muffle.Discord.Generated.Schemas.SnowflakeType

data MessageAllowedMentionsRequest = MessageAllowedMentionsRequest
    { parse :: [Maybe AllowedMentionTypes]
    , repliedUser :: Maybe Bool
    , roles :: [Maybe SnowflakeType]
    , users :: [Maybe SnowflakeType]
    }
    deriving (Show, Eq, Generic)
