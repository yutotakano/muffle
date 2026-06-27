{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MessageEmbedAuthorResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data MessageEmbedAuthorResponse = MessageEmbedAuthorResponse
    { iconUrl :: Maybe String
    , name :: String
    , proxyIconUrl :: Maybe String
    , url :: Maybe String
    }
    deriving (Show, Eq, Generic)

instance FromJSON MessageEmbedAuthorResponse where
    parseJSON = withObject "MessageEmbedAuthorResponse" $ \o ->
        MessageEmbedAuthorResponse <$>
            o .: "icon_url"
            <*> o .: "name"
            <*> o .: "proxy_icon_url"
            <*> o .: "url"