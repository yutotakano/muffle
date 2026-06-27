{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildTemplateChannelTags where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data GuildTemplateChannelTags = GuildTemplateChannelTags
    { emojiId :: Maybe SnowflakeType
    , emojiName :: Maybe String
    , id :: Maybe Int32
    , moderated :: Maybe Bool
    , name :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON GuildTemplateChannelTags where
    parseJSON = withObject "GuildTemplateChannelTags" $ \o ->
        GuildTemplateChannelTags <$>
            o .: "emoji_id"
            <*> o .: "emoji_name"
            <*> o .: "id"
            <*> o .: "moderated"
            <*> o .: "name"