{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.UpdateThreadRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ThreadAutoArchiveDuration
import Muffle.Discord.Generated.Schemas.VideoQualityModes

data UpdateThreadRequestPartial = UpdateThreadRequestPartial
    { appliedTags :: Maybe [SnowflakeType]
    , archived :: Maybe (Maybe Bool)
    , autoArchiveDuration :: Maybe (Maybe ThreadAutoArchiveDuration)
    , bitrate :: Maybe (Maybe Int32)
    , flags :: Maybe (Maybe Integer)
    , invitable :: Maybe (Maybe Bool)
    , locked :: Maybe (Maybe Bool)
    , name :: Maybe (Maybe String)
    , rateLimitPerUser :: Maybe (Maybe Integer)
    , rtcRegion :: Maybe (Maybe String)
    , userLimit :: Maybe (Maybe Integer)
    , videoQualityMode :: Maybe (Maybe VideoQualityModes)
    }
    deriving (Show, Eq, Generic)
