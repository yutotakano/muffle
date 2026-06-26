{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.RichEmbedField where

import Data.Int (Int32, Int64)
import GHC.Generics


data RichEmbedField = RichEmbedField
    { inline :: Maybe Bool
    , name :: String
    , value :: String
    }
    deriving (Show, Eq, Generic)
