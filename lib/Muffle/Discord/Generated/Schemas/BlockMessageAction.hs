{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.BlockMessageAction where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.BlockMessageActionMetadata
import Muffle.Discord.Generated.Schemas.AutomodActionType

data BlockMessageAction = BlockMessageAction
    { metadata :: Maybe BlockMessageActionMetadata
    , type' :: AutomodActionType
    }
    deriving (Show, Eq, Generic)
