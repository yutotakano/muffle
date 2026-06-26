{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.EntityMetadataExternal where

import Data.Int (Int32, Int64)
import GHC.Generics


data EntityMetadataExternal = EntityMetadataExternal
    { location :: String
    }
    deriving (Show, Eq, Generic)
