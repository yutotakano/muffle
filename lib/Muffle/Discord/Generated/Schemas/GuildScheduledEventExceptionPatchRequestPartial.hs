{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildScheduledEventExceptionPatchRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics


data GuildScheduledEventExceptionPatchRequestPartial = GuildScheduledEventExceptionPatchRequestPartial
    { isCanceled :: Maybe Bool
    , scheduledEndTime :: Maybe String
    , scheduledStartTime :: Maybe String
    }
    deriving (Show, Eq, Generic)
