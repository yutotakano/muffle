{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ButtonComponentForMessageRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ComponentEmojiForRequest
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ButtonStyleTypes
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data ButtonComponentForMessageRequest = ButtonComponentForMessageRequest
    { customId :: Maybe (Maybe String)
    , disabled :: Maybe (Maybe Bool)
    , emoji :: Maybe (Maybe ComponentEmojiForRequest)
    , id :: Maybe (Maybe Int32)
    , label :: Maybe (Maybe String)
    , skuId :: Maybe (Maybe SnowflakeType)
    , style :: ButtonStyleTypes
    , type' :: MessageComponentTypes
    , url :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)

instance FromJSON ButtonComponentForMessageRequest where
    parseJSON = withObject "ButtonComponentForMessageRequest" $ \o ->
        ButtonComponentForMessageRequest <$>
            o .: "custom_id"
            <*> o .: "disabled"
            <*> o .: "emoji"
            <*> o .: "id"
            <*> o .: "label"
            <*> o .: "sku_id"
            <*> o .: "style"
            <*> o .: "type"
            <*> o .: "url"