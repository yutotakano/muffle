{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.RichEmbedVideo where

import Data.Int (Int32, Int64)
import GHC.Generics


data RichEmbedVideo = RichEmbedVideo
    { description :: Maybe String
    , height :: Maybe Integer
    , isAnimated :: Maybe Bool
    , placeholder :: Maybe String
    , placeholderVersion :: Maybe Integer
    , url :: Maybe String
    , width :: Maybe Integer
    }
    deriving (Show, Eq, Generic)
