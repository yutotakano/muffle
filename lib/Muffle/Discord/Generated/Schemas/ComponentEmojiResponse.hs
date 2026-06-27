{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ComponentEmojiResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data ComponentEmojiResponse = ComponentEmojiResponse
    { animated :: Maybe Bool
    , id :: Maybe SnowflakeType
    , name :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON ComponentEmojiResponse where
    parseJSON = withObject "ComponentEmojiResponse" $ \o ->
        ComponentEmojiResponse <$>
            o .: "animated"
            <*> o .: "id"
            <*> o .: "name"