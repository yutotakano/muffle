{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.PinnedMessagesResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.PinnedMessageResponse

data PinnedMessagesResponse = PinnedMessagesResponse
    { hasMore :: Bool
    , items :: [PinnedMessageResponse]
    }
    deriving (Show, Eq, Generic)
