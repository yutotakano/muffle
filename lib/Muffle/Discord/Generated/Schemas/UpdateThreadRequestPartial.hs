{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UpdateThreadRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
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

instance FromJSON UpdateThreadRequestPartial where
    parseJSON = withObject "UpdateThreadRequestPartial" $ \o ->
        UpdateThreadRequestPartial <$>
            o .: "applied_tags"
            <*> o .: "archived"
            <*> o .: "auto_archive_duration"
            <*> o .: "bitrate"
            <*> o .: "flags"
            <*> o .: "invitable"
            <*> o .: "locked"
            <*> o .: "name"
            <*> o .: "rate_limit_per_user"
            <*> o .: "rtc_region"
            <*> o .: "user_limit"
            <*> o .: "video_quality_mode"