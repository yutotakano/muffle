{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.CreateOrUpdateThreadTagRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data CreateOrUpdateThreadTagRequest = CreateOrUpdateThreadTagRequest
    { emojiId :: Maybe (Maybe SnowflakeType)
    , emojiName :: Maybe (Maybe String)
    , moderated :: Maybe (Maybe Bool)
    , name :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON CreateOrUpdateThreadTagRequest where
    parseJSON = withObject "CreateOrUpdateThreadTagRequest" $ \o ->
        CreateOrUpdateThreadTagRequest <$>
            o .: "emoji_id"
            <*> o .: "emoji_name"
            <*> o .: "moderated"
            <*> o .: "name"