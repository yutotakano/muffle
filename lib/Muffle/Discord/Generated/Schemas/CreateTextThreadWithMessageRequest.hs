{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.CreateTextThreadWithMessageRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ThreadAutoArchiveDuration

data CreateTextThreadWithMessageRequest = CreateTextThreadWithMessageRequest
    { autoArchiveDuration :: Maybe ThreadAutoArchiveDuration
    , name :: String
    , rateLimitPerUser :: Maybe Integer
    }
    deriving (Show, Eq, Generic)
