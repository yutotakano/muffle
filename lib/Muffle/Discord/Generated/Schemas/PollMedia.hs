{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.PollMedia where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.PollEmoji

data PollMedia = PollMedia
    { emoji :: Maybe (Maybe PollEmoji)
    , text :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)

instance FromJSON PollMedia where
    parseJSON = withObject "PollMedia" $ \o ->
        PollMedia <$>
            o .: "emoji"
            <*> o .: "text"