{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildIncidentActionsRequest where

import Data.Int (Int32, Int64)
import GHC.Generics


data GuildIncidentActionsRequest = GuildIncidentActionsRequest
    { dmsDisabledUntil :: Maybe String
    , invitesDisabledUntil :: Maybe String
    }
    deriving (Show, Eq, Generic)
