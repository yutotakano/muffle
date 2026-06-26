{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.SlackWebhook where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.WebhookSlackEmbed

data SlackWebhook = SlackWebhook
    { attachments :: [WebhookSlackEmbed]
    , iconUrl :: Maybe String
    , text :: Maybe String
    , username :: Maybe String
    }
    deriving (Show, Eq, Generic)
