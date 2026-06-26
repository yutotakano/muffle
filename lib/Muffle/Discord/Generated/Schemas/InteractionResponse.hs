{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.InteractionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.InteractionTypes

data InteractionResponse = InteractionResponse
    { activityInstanceId :: Maybe (Maybe String)
    , channelId :: Maybe SnowflakeType
    , guildId :: Maybe SnowflakeType
    , id :: SnowflakeType
    , responseMessageEphemeral :: Maybe Bool
    , responseMessageId :: Maybe SnowflakeType
    , responseMessageLoading :: Maybe Bool
    , type' :: InteractionTypes
    }
    deriving (Show, Eq, Generic)
