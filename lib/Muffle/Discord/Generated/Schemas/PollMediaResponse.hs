{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.PollMediaResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.MessageReactionEmojiResponse

data PollMediaResponse = PollMediaResponse
    { emoji :: Maybe MessageReactionEmojiResponse
    , text :: Maybe String
    }
    deriving (Show, Eq, Generic)

instance FromJSON PollMediaResponse where
    parseJSON = withObject "PollMediaResponse" $ \o ->
        PollMediaResponse <$>
            o .: "emoji"
            <*> o .: "text"