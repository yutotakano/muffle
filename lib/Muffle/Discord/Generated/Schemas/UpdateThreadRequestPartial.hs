{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.UpdateThreadRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ThreadAutoArchiveDuration
import Muffle.Discord.Generated.Schemas.VideoQualityModes

data UpdateThreadRequestPartial = UpdateThreadRequestPartial
    { appliedTags :: [SnowflakeType]
    , archived :: Maybe Bool
    , autoArchiveDuration :: Maybe ThreadAutoArchiveDuration
    , bitrate :: Maybe Int32
    , flags :: Maybe Integer
    , invitable :: Maybe Bool
    , locked :: Maybe Bool
    , name :: Maybe String
    , rateLimitPerUser :: Maybe Integer
    , rtcRegion :: Maybe String
    , userLimit :: Maybe Integer
    , videoQualityMode :: Maybe VideoQualityModes
    }
    deriving (Show, Eq, Generic)
