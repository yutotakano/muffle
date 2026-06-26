{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.FlagToChannelAction where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.FlagToChannelActionMetadata
import Muffle.Discord.Generated.Schemas.AutomodActionType

data FlagToChannelAction = FlagToChannelAction
    { metadata :: FlagToChannelActionMetadata
    , type' :: AutomodActionType
    }
    deriving (Show, Eq, Generic)
