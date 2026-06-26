{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MessageEmbedResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.MessageEmbedAuthorResponse
import Muffle.Discord.Generated.Schemas.ContainerComponentResponse
import Muffle.Discord.Generated.Schemas.MessageEmbedFieldResponse
import Muffle.Discord.Generated.Schemas.MessageEmbedFooterResponse
import Muffle.Discord.Generated.Schemas.MessageEmbedImageResponse
import Muffle.Discord.Generated.Schemas.MessageEmbedProviderResponse
import Muffle.Discord.Generated.Schemas.MessageEmbedVideoResponse

data MessageEmbedResponse = MessageEmbedResponse
    { author :: MessageEmbedAuthorResponse
    , color :: Int32
    , components :: [ContainerComponentResponse]
    , description :: String
    , fields :: [MessageEmbedFieldResponse]
    , flags :: Maybe Int32
    , footer :: MessageEmbedFooterResponse
    , image :: MessageEmbedImageResponse
    , provider :: MessageEmbedProviderResponse
    , thumbnail :: MessageEmbedImageResponse
    , timestamp :: String
    , title :: String
    , type' :: String
    , url :: String
    , video :: MessageEmbedVideoResponse
    }
    deriving (Show, Eq, Generic)
