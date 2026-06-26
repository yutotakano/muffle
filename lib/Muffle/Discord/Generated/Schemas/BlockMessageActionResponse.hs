{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.BlockMessageActionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.BlockMessageActionMetadataResponse
import Muffle.Discord.Generated.Schemas.AutomodActionType

data BlockMessageActionResponse = BlockMessageActionResponse
    { metadata :: BlockMessageActionMetadataResponse
    , type' :: AutomodActionType
    }
    deriving (Show, Eq, Generic)
