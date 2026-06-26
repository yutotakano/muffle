{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.BlockMessageActionMetadata where

import Data.Int (Int32, Int64)
import GHC.Generics


data BlockMessageActionMetadata = BlockMessageActionMetadata
    { customMessage :: Maybe String
    }
    deriving (Show, Eq, Generic)
