{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ThreadMetadataResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ThreadAutoArchiveDuration

data ThreadMetadataResponse = ThreadMetadataResponse
    { archiveTimestamp :: Maybe String
    , archived :: Bool
    , autoArchiveDuration :: ThreadAutoArchiveDuration
    , createTimestamp :: Maybe String
    , invitable :: Maybe Bool
    , locked :: Bool
    }
    deriving (Show, Eq, Generic)

instance FromJSON ThreadMetadataResponse where
    parseJSON = withObject "ThreadMetadataResponse" $ \o ->
        ThreadMetadataResponse <$>
            o .: "archive_timestamp"
            <*> o .: "archived"
            <*> o .: "auto_archive_duration"
            <*> o .: "create_timestamp"
            <*> o .: "invitable"
            <*> o .: "locked"