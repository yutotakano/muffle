{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MessageEmbedFooterResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data MessageEmbedFooterResponse = MessageEmbedFooterResponse
    { iconUrl :: Maybe String
    , proxyIconUrl :: Maybe String
    , text :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON MessageEmbedFooterResponse where
    parseJSON = withObject "MessageEmbedFooterResponse" $ \o ->
        MessageEmbedFooterResponse <$>
            o .: "icon_url"
            <*> o .: "proxy_icon_url"
            <*> o .: "text"