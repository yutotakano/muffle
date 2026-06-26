{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.WebhookSlackEmbed where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.WebhookSlackEmbedField

data WebhookSlackEmbed = WebhookSlackEmbed
    { authorIcon :: Maybe (Maybe String)
    , authorLink :: Maybe (Maybe String)
    , authorName :: Maybe (Maybe String)
    , color :: Maybe (Maybe String)
    , fields :: Maybe [WebhookSlackEmbedField]
    , footer :: Maybe (Maybe String)
    , footerIcon :: Maybe (Maybe String)
    , imageUrl :: Maybe (Maybe String)
    , pretext :: Maybe (Maybe String)
    , text :: Maybe (Maybe String)
    , thumbUrl :: Maybe (Maybe String)
    , title :: Maybe (Maybe String)
    , titleLink :: Maybe (Maybe String)
    , ts :: Maybe (Maybe Integer)
    }
    deriving (Show, Eq, Generic)
