{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.WebhookSourceChannelResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data WebhookSourceChannelResponse = WebhookSourceChannelResponse
    { id :: SnowflakeType
    , name :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON WebhookSourceChannelResponse where
    parseJSON = withObject "WebhookSourceChannelResponse" $ \o ->
        WebhookSourceChannelResponse <$>
            o .: "id"
            <*> o .: "name"