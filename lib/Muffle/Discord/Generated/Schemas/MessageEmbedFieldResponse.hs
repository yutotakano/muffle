{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MessageEmbedFieldResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data MessageEmbedFieldResponse = MessageEmbedFieldResponse
    { inline :: Bool
    , name :: String
    , value :: String
    }
    deriving (Show, Eq, Generic)
