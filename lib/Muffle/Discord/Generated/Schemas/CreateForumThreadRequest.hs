{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.CreateForumThreadRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ThreadAutoArchiveDuration
import Muffle.Discord.Generated.Schemas.BaseCreateMessageCreateRequest

data CreateForumThreadRequest = CreateForumThreadRequest
    { appliedTags :: Maybe [SnowflakeType]
    , autoArchiveDuration :: Maybe (Maybe ThreadAutoArchiveDuration)
    , message :: BaseCreateMessageCreateRequest
    , name :: String
    , rateLimitPerUser :: Maybe (Maybe Integer)
    }
    deriving (Show, Eq, Generic)

instance FromJSON CreateForumThreadRequest where
    parseJSON = withObject "CreateForumThreadRequest" $ \o ->
        CreateForumThreadRequest <$>
            o .: "applied_tags"
            <*> o .: "auto_archive_duration"
            <*> o .: "message"
            <*> o .: "name"
            <*> o .: "rate_limit_per_user"