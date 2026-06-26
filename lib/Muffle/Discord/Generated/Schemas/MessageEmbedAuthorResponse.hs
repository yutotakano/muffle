{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MessageEmbedAuthorResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data MessageEmbedAuthorResponse = MessageEmbedAuthorResponse
    { iconUrl :: Maybe String
    , name :: String
    , proxyIconUrl :: Maybe String
    , url :: Maybe String
    }
    deriving (Show, Eq, Generic)
