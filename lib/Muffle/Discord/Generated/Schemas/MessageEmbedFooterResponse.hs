{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MessageEmbedFooterResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data MessageEmbedFooterResponse = MessageEmbedFooterResponse
    { iconUrl :: Maybe String
    , proxyIconUrl :: Maybe String
    , text :: String
    }
    deriving (Show, Eq, Generic)
