{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.SettingsEmojiResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data SettingsEmojiResponse = SettingsEmojiResponse
    { animated :: Bool
    , id :: Maybe SnowflakeType
    , name :: Maybe String
    }
    deriving (Show, Eq, Generic)

instance FromJSON SettingsEmojiResponse where
    parseJSON = withObject "SettingsEmojiResponse" $ \o ->
        SettingsEmojiResponse <$>
            o .: "animated"
            <*> o .: "id"
            <*> o .: "name"