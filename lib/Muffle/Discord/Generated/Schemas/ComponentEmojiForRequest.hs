{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ComponentEmojiForRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data ComponentEmojiForRequest = ComponentEmojiForRequest
    { id :: Maybe (Maybe SnowflakeType)
    , name :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON ComponentEmojiForRequest where
    parseJSON = withObject "ComponentEmojiForRequest" $ \o ->
        ComponentEmojiForRequest <$>
            o .: "id"
            <*> o .: "name"