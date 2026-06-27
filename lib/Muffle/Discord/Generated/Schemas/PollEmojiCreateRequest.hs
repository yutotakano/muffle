{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.PollEmojiCreateRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data PollEmojiCreateRequest = PollEmojiCreateRequest
    { animated :: Maybe (Maybe Bool)
    , id :: Maybe (Maybe SnowflakeType)
    , name :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)

instance FromJSON PollEmojiCreateRequest where
    parseJSON = withObject "PollEmojiCreateRequest" $ \o ->
        PollEmojiCreateRequest <$>
            o .: "animated"
            <*> o .: "id"
            <*> o .: "name"