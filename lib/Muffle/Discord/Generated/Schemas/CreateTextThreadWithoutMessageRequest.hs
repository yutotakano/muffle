{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.CreateTextThreadWithoutMessageRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ThreadAutoArchiveDuration
import Muffle.Discord.Generated.Schemas.ChannelTypes

data CreateTextThreadWithoutMessageRequest = CreateTextThreadWithoutMessageRequest
    { autoArchiveDuration :: Maybe (Maybe ThreadAutoArchiveDuration)
    , invitable :: Maybe (Maybe Bool)
    , name :: String
    , rateLimitPerUser :: Maybe (Maybe Integer)
    , type' :: Maybe (Maybe ChannelTypes)
    }
    deriving (Show, Eq, Generic)
