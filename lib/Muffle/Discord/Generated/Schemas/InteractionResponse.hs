{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.InteractionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.InteractionTypes

data InteractionResponse = InteractionResponse
    { activityInstanceId :: Maybe String
    , channelId :: SnowflakeType
    , guildId :: SnowflakeType
    , id :: SnowflakeType
    , responseMessageEphemeral :: Bool
    , responseMessageId :: SnowflakeType
    , responseMessageLoading :: Bool
    , type' :: InteractionTypes
    }
    deriving (Show, Eq, Generic)
