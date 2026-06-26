{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.PinnedMessageResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.MessageResponse

data PinnedMessageResponse = PinnedMessageResponse
    { message :: MessageResponse
    , pinnedAt :: String
    }
    deriving (Show, Eq, Generic)
