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
    { author :: Maybe MessageEmbedAuthorResponse
    , color :: Maybe Int32
    , components :: Maybe [ContainerComponentResponse]
    , description :: Maybe String
    , fields :: Maybe [MessageEmbedFieldResponse]
    , flags :: Maybe (Maybe Int32)
    , footer :: Maybe MessageEmbedFooterResponse
    , image :: Maybe MessageEmbedImageResponse
    , provider :: Maybe MessageEmbedProviderResponse
    , thumbnail :: Maybe MessageEmbedImageResponse
    , timestamp :: Maybe String
    , title :: Maybe String
    , type' :: String
    , url :: Maybe String
    , video :: Maybe MessageEmbedVideoResponse
    }
    deriving (Show, Eq, Generic)
