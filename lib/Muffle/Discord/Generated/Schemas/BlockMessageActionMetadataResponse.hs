{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.BlockMessageActionMetadataResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data BlockMessageActionMetadataResponse = BlockMessageActionMetadataResponse
    { customMessage :: Maybe String
    }
    deriving (Show, Eq, Generic)
