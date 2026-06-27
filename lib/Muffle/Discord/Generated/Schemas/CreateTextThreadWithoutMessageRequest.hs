{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.CreateTextThreadWithoutMessageRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ThreadAutoArchiveDuration
import Muffle.Discord.Generated.Schemas.ChannelTypes

data CreateTextThreadWithoutMessageRequest = CreateTextThreadWithoutMessageRequest
    { autoArchiveDuration :: Maybe (Maybe ThreadAutoArchiveDuration)
    , invitable :: Maybe (Maybe Bool)
    , name :: String
    , rateLimitPerUser :: Maybe (Maybe Integer)
    , type' :: Maybe (Maybe ChannelTypes)
    }
    deriving (Show, Eq, Generic)

instance FromJSON CreateTextThreadWithoutMessageRequest where
    parseJSON = withObject "CreateTextThreadWithoutMessageRequest" $ \o ->
        CreateTextThreadWithoutMessageRequest <$>
            o .: "auto_archive_duration"
            <*> o .: "invitable"
            <*> o .: "name"
            <*> o .: "rate_limit_per_user"
            <*> o .: "type"