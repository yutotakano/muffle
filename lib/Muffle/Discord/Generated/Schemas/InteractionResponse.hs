{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.InteractionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
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

instance FromJSON InteractionResponse where
    parseJSON = withObject "InteractionResponse" $ \o ->
        InteractionResponse <$>
            o .: "activity_instance_id"
            <*> o .: "channel_id"
            <*> o .: "guild_id"
            <*> o .: "id"
            <*> o .: "response_message_ephemeral"
            <*> o .: "response_message_id"
            <*> o .: "response_message_loading"
            <*> o .: "type"