{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.PollMediaCreateRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.PollEmojiCreateRequest

data PollMediaCreateRequest = PollMediaCreateRequest
    { emoji :: Maybe (Maybe PollEmojiCreateRequest)
    , text :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)

instance FromJSON PollMediaCreateRequest where
    parseJSON = withObject "PollMediaCreateRequest" $ \o ->
        PollMediaCreateRequest <$>
            o .: "emoji"
            <*> o .: "text"