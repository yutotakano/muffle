{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MessageEmbedProviderResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data MessageEmbedProviderResponse = MessageEmbedProviderResponse
    { name :: String
    , url :: Maybe String
    }
    deriving (Show, Eq, Generic)
