{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.EntityMetadataExternalResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data EntityMetadataExternalResponse = EntityMetadataExternalResponse
    { location :: String
    }
    deriving (Show, Eq, Generic)
