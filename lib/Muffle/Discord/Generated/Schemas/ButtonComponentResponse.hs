{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ButtonComponentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ComponentEmojiResponse
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ButtonStyleTypes
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data ButtonComponentResponse = ButtonComponentResponse
    { customId :: Maybe String
    , disabled :: Maybe Bool
    , emoji :: Maybe ComponentEmojiResponse
    , id :: Int32
    , label :: Maybe String
    , skuId :: Maybe SnowflakeType
    , style :: ButtonStyleTypes
    , type' :: MessageComponentTypes
    , url :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)

instance FromJSON ButtonComponentResponse where
    parseJSON = withObject "ButtonComponentResponse" $ \o ->
        ButtonComponentResponse <$>
            o .: "custom_id"
            <*> o .: "disabled"
            <*> o .: "emoji"
            <*> o .: "id"
            <*> o .: "label"
            <*> o .: "sku_id"
            <*> o .: "style"
            <*> o .: "type"
            <*> o .: "url"