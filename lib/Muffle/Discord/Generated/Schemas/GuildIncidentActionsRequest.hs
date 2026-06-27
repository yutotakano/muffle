{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildIncidentActionsRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data GuildIncidentActionsRequest = GuildIncidentActionsRequest
    { dmsDisabledUntil :: Maybe (Maybe String)
    , invitesDisabledUntil :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)

instance FromJSON GuildIncidentActionsRequest where
    parseJSON = withObject "GuildIncidentActionsRequest" $ \o ->
        GuildIncidentActionsRequest <$>
            o .: "dms_disabled_until"
            <*> o .: "invites_disabled_until"