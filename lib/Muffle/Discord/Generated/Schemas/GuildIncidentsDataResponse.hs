{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildIncidentsDataResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data GuildIncidentsDataResponse = GuildIncidentsDataResponse
    { dmsDisabledUntil :: Maybe String
    , invitesDisabledUntil :: Maybe String
    }
    deriving (Show, Eq, Generic)
