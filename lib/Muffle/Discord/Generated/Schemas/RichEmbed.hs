{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.RichEmbed where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.RichEmbedAuthor
import Muffle.Discord.Generated.Schemas.RichEmbedField
import Muffle.Discord.Generated.Schemas.RichEmbedFooter
import Muffle.Discord.Generated.Schemas.RichEmbedImage
import Muffle.Discord.Generated.Schemas.RichEmbedProvider
import Muffle.Discord.Generated.Schemas.RichEmbedThumbnail
import Muffle.Discord.Generated.Schemas.RichEmbedVideo

data RichEmbed = RichEmbed
    { author :: Maybe RichEmbedAuthor
    , color :: Maybe Integer
    , description :: Maybe String
    , fields :: [RichEmbedField]
    , footer :: Maybe RichEmbedFooter
    , image :: Maybe RichEmbedImage
    , provider :: Maybe RichEmbedProvider
    , thumbnail :: Maybe RichEmbedThumbnail
    , timestamp :: Maybe String
    , title :: Maybe String
    , type' :: Maybe String
    , url :: Maybe String
    , video :: Maybe RichEmbedVideo
    }
    deriving (Show, Eq, Generic)
