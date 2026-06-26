{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.RichEmbedProvider where

import Data.Int (Int32, Int64)
import GHC.Generics


data RichEmbedProvider = RichEmbedProvider
    { name :: Maybe (Maybe String)
    , url :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)
