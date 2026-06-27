{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.BasicApplicationResponseWithBot where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.UserResponse
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ApplicationTypes

data BasicApplicationResponseWithBot = BasicApplicationResponseWithBot
    { bot :: Maybe UserResponse
    , coverImage :: Maybe String
    , description :: String
    , icon :: Maybe String
    , id :: SnowflakeType
    , name :: String
    , primarySkuId :: Maybe SnowflakeType
    , type' :: Maybe ApplicationTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON BasicApplicationResponseWithBot where
    parseJSON = withObject "BasicApplicationResponseWithBot" $ \o ->
        BasicApplicationResponseWithBot <$>
            o .: "bot"
            <*> o .: "cover_image"
            <*> o .: "description"
            <*> o .: "icon"
            <*> o .: "id"
            <*> o .: "name"
            <*> o .: "primary_sku_id"
            <*> o .: "type"