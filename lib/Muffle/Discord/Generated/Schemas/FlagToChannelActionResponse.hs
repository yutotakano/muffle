{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.FlagToChannelActionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.FlagToChannelActionMetadataResponse
import Muffle.Discord.Generated.Schemas.AutomodActionType

data FlagToChannelActionResponse = FlagToChannelActionResponse
    { metadata :: FlagToChannelActionMetadataResponse
    , type' :: AutomodActionType
    }
    deriving (Show, Eq, Generic)
