{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.CreateTextThreadWithoutMessageRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ThreadAutoArchiveDuration
import Muffle.Discord.Generated.Schemas.ChannelTypes

data CreateTextThreadWithoutMessageRequest = CreateTextThreadWithoutMessageRequest
    { autoArchiveDuration :: Maybe ThreadAutoArchiveDuration
    , invitable :: Maybe Bool
    , name :: String
    , rateLimitPerUser :: Maybe Integer
    , type' :: Maybe ChannelTypes
    }
    deriving (Show, Eq, Generic)
