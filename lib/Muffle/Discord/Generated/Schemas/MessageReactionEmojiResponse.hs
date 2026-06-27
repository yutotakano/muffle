{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MessageReactionEmojiResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data MessageReactionEmojiResponse = MessageReactionEmojiResponse
    { animated :: Maybe Bool
    , id :: Maybe SnowflakeType
    , name :: Maybe String
    }
    deriving (Show, Eq, Generic)

instance FromJSON MessageReactionEmojiResponse where
    parseJSON = withObject "MessageReactionEmojiResponse" $ \o ->
        MessageReactionEmojiResponse <$>
            o .: "animated"
            <*> o .: "id"
            <*> o .: "name"