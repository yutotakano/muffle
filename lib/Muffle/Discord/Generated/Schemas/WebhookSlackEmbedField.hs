{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.WebhookSlackEmbedField where

import Data.Int (Int32, Int64)
import GHC.Generics


data WebhookSlackEmbedField = WebhookSlackEmbedField
    { inline :: Maybe (Maybe Bool)
    , name :: Maybe (Maybe String)
    , value :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)
