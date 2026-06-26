{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ThreadMetadataResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ThreadAutoArchiveDuration

data ThreadMetadataResponse = ThreadMetadataResponse
    { archiveTimestamp :: Maybe String
    , archived :: Bool
    , autoArchiveDuration :: ThreadAutoArchiveDuration
    , createTimestamp :: String
    , invitable :: Bool
    , locked :: Bool
    }
    deriving (Show, Eq, Generic)
