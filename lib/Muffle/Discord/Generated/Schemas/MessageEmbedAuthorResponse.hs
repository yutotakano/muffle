{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MessageEmbedAuthorResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data MessageEmbedAuthorResponse = MessageEmbedAuthorResponse
    { iconUrl :: String
    , name :: String
    , proxyIconUrl :: String
    , url :: String
    }
    deriving (Show, Eq, Generic)
