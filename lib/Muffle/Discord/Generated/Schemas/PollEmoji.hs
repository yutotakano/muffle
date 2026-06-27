{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.PollEmoji where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data PollEmoji = PollEmoji
    { animated :: Maybe (Maybe Bool)
    , id :: Maybe (Maybe SnowflakeType)
    , name :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)

instance FromJSON PollEmoji where
    parseJSON = withObject "PollEmoji" $ \o ->
        PollEmoji <$>
            o .: "animated"
            <*> o .: "id"
            <*> o .: "name"