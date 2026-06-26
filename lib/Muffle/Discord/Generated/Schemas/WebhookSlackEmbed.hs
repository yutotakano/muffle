{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.WebhookSlackEmbed where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.WebhookSlackEmbedField

data WebhookSlackEmbed = WebhookSlackEmbed
    { authorIcon :: Maybe String
    , authorLink :: Maybe String
    , authorName :: Maybe String
    , color :: Maybe String
    , fields :: [WebhookSlackEmbedField]
    , footer :: Maybe String
    , footerIcon :: Maybe String
    , imageUrl :: Maybe String
    , pretext :: Maybe String
    , text :: Maybe String
    , thumbUrl :: Maybe String
    , title :: Maybe String
    , titleLink :: Maybe String
    , ts :: Maybe Integer
    }
    deriving (Show, Eq, Generic)
