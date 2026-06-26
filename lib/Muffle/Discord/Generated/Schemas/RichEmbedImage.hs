{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.RichEmbedImage where

import Data.Int (Int32, Int64)
import GHC.Generics


data RichEmbedImage = RichEmbedImage
    { description :: Maybe (Maybe String)
    , height :: Maybe (Maybe Integer)
    , isAnimated :: Maybe (Maybe Bool)
    , placeholder :: Maybe (Maybe String)
    , placeholderVersion :: Maybe (Maybe Integer)
    , url :: Maybe (Maybe String)
    , width :: Maybe (Maybe Integer)
    }
    deriving (Show, Eq, Generic)
