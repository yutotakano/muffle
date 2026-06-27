{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MessageReactionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.MessageReactionCountDetailsResponse
import Muffle.Discord.Generated.Schemas.MessageReactionEmojiResponse

data MessageReactionResponse = MessageReactionResponse
    { burstColors :: [String]
    , count :: Int32
    , countDetails :: MessageReactionCountDetailsResponse
    , emoji :: MessageReactionEmojiResponse
    , me :: Bool
    , meBurst :: Bool
    }
    deriving (Show, Eq, Generic)

instance FromJSON MessageReactionResponse where
    parseJSON = withObject "MessageReactionResponse" $ \o ->
        MessageReactionResponse <$>
            o .: "burst_colors"
            <*> o .: "count"
            <*> o .: "count_details"
            <*> o .: "emoji"
            <*> o .: "me"
            <*> o .: "me_burst"