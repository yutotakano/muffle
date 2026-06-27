{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildIncidentsDataResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data GuildIncidentsDataResponse = GuildIncidentsDataResponse
    { dmsDisabledUntil :: Maybe String
    , invitesDisabledUntil :: Maybe String
    }
    deriving (Show, Eq, Generic)

instance FromJSON GuildIncidentsDataResponse where
    parseJSON = withObject "GuildIncidentsDataResponse" $ \o ->
        GuildIncidentsDataResponse <$>
            o .: "dms_disabled_until"
            <*> o .: "invites_disabled_until"