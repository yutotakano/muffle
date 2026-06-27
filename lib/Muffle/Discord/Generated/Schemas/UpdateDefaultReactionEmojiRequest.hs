{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UpdateDefaultReactionEmojiRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data UpdateDefaultReactionEmojiRequest = UpdateDefaultReactionEmojiRequest
    { emojiId :: Maybe (Maybe SnowflakeType)
    , emojiName :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)

instance FromJSON UpdateDefaultReactionEmojiRequest where
    parseJSON = withObject "UpdateDefaultReactionEmojiRequest" $ \o ->
        UpdateDefaultReactionEmojiRequest <$>
            o .: "emoji_id"
            <*> o .: "emoji_name"