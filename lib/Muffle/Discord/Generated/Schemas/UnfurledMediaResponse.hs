{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UnfurledMediaResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data UnfurledMediaResponse = UnfurledMediaResponse
    { attachmentId :: Maybe SnowflakeType
    , contentType :: Maybe (Maybe String)
    , height :: Maybe (Maybe Int32)
    , id :: SnowflakeType
    , proxyUrl :: String
    , url :: String
    , width :: Maybe (Maybe Int32)
    }
    deriving (Show, Eq, Generic)

instance FromJSON UnfurledMediaResponse where
    parseJSON = withObject "UnfurledMediaResponse" $ \o ->
        UnfurledMediaResponse <$>
            o .: "attachment_id"
            <*> o .: "content_type"
            <*> o .: "height"
            <*> o .: "id"
            <*> o .: "proxy_url"
            <*> o .: "url"
            <*> o .: "width"