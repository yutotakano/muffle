{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildTemplateResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.UserResponse
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.GuildTemplateSnapshotResponse

data GuildTemplateResponse = GuildTemplateResponse
    { code :: String
    , createdAt :: String
    , creator :: Maybe UserResponse
    , creatorId :: SnowflakeType
    , description :: Maybe String
    , isDirty :: Maybe Bool
    , name :: String
    , serializedSourceGuild :: GuildTemplateSnapshotResponse
    , sourceGuildId :: SnowflakeType
    , updatedAt :: String
    , usageCount :: Int32
    }
    deriving (Show, Eq, Generic)

instance FromJSON GuildTemplateResponse where
    parseJSON = withObject "GuildTemplateResponse" $ \o ->
        GuildTemplateResponse <$>
            o .: "code"
            <*> o .: "created_at"
            <*> o .: "creator"
            <*> o .: "creator_id"
            <*> o .: "description"
            <*> o .: "is_dirty"
            <*> o .: "name"
            <*> o .: "serialized_source_guild"
            <*> o .: "source_guild_id"
            <*> o .: "updated_at"
            <*> o .: "usage_count"