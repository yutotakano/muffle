{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.DefaultReactionEmojiResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data DefaultReactionEmojiResponse = DefaultReactionEmojiResponse
    { emojiId :: Maybe SnowflakeType
    , emojiName :: Maybe String
    }
    deriving (Show, Eq, Generic)

instance FromJSON DefaultReactionEmojiResponse where
    parseJSON = withObject "DefaultReactionEmojiResponse" $ \o ->
        DefaultReactionEmojiResponse <$>
            o .: "emoji_id"
            <*> o .: "emoji_name"