{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.SlackWebhook where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.WebhookSlackEmbed

data SlackWebhook = SlackWebhook
    { attachments :: Maybe [WebhookSlackEmbed]
    , iconUrl :: Maybe (Maybe String)
    , text :: Maybe (Maybe String)
    , username :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)

instance FromJSON SlackWebhook where
    parseJSON = withObject "SlackWebhook" $ \o ->
        SlackWebhook <$>
            o .: "attachments"
            <*> o .: "icon_url"
            <*> o .: "text"
            <*> o .: "username"