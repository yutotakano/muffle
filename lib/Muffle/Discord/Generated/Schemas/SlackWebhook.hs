{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.SlackWebhook where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.WebhookSlackEmbed

data SlackWebhook = SlackWebhook
    { attachments :: Maybe [WebhookSlackEmbed]
    , iconUrl :: Maybe (Maybe String)
    , text :: Maybe (Maybe String)
    , username :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)
