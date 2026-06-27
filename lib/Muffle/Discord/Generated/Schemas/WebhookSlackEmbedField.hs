{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.WebhookSlackEmbedField where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data WebhookSlackEmbedField = WebhookSlackEmbedField
    { inline :: Maybe (Maybe Bool)
    , name :: Maybe (Maybe String)
    , value :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)

instance FromJSON WebhookSlackEmbedField where
    parseJSON = withObject "WebhookSlackEmbedField" $ \o ->
        WebhookSlackEmbedField <$>
            o .: "inline"
            <*> o .: "name"
            <*> o .: "value"