{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.WebhookSourceGuildResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data WebhookSourceGuildResponse = WebhookSourceGuildResponse
    { icon :: Maybe String
    , id :: SnowflakeType
    , name :: String
    }
    deriving (Show, Eq, Generic)
