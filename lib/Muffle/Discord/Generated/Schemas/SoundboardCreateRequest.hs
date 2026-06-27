{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.SoundboardCreateRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data SoundboardCreateRequest = SoundboardCreateRequest
    { emojiId :: Maybe (Maybe SnowflakeType)
    , emojiName :: Maybe (Maybe String)
    , name :: String
    , sound :: String
    , volume :: Maybe (Maybe Integer)
    }
    deriving (Show, Eq, Generic)

instance FromJSON SoundboardCreateRequest where
    parseJSON = withObject "SoundboardCreateRequest" $ \o ->
        SoundboardCreateRequest <$>
            o .: "emoji_id"
            <*> o .: "emoji_name"
            <*> o .: "name"
            <*> o .: "sound"
            <*> o .: "volume"