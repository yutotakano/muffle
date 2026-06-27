{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UpdateThreadTagRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data UpdateThreadTagRequest = UpdateThreadTagRequest
    { emojiId :: Maybe (Maybe SnowflakeType)
    , emojiName :: Maybe (Maybe String)
    , id :: Maybe (Maybe SnowflakeType)
    , moderated :: Maybe (Maybe Bool)
    , name :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON UpdateThreadTagRequest where
    parseJSON = withObject "UpdateThreadTagRequest" $ \o ->
        UpdateThreadTagRequest <$>
            o .: "emoji_id"
            <*> o .: "emoji_name"
            <*> o .: "id"
            <*> o .: "moderated"
            <*> o .: "name"