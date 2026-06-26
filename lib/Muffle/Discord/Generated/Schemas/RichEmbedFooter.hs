{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.RichEmbedFooter where

import Data.Int (Int32, Int64)
import GHC.Generics


data RichEmbedFooter = RichEmbedFooter
    { iconUrl :: Maybe (Maybe String)
    , text :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)
