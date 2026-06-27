{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildJoinRequestApplicationStatus where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data GuildJoinRequestApplicationStatus = GuildJoinRequestApplicationStatusSTARTED | GuildJoinRequestApplicationStatusSUBMITTED | GuildJoinRequestApplicationStatusREJECTED | GuildJoinRequestApplicationStatusAPPROVED
    deriving (Show, Eq, Generic)

instance FromJSON GuildJoinRequestApplicationStatus where
    parseJSON v = case v of
        "STARTED" -> pure GuildJoinRequestApplicationStatusSTARTED
        "SUBMITTED" -> pure GuildJoinRequestApplicationStatusSUBMITTED
        "REJECTED" -> pure GuildJoinRequestApplicationStatusREJECTED
        "APPROVED" -> pure GuildJoinRequestApplicationStatusAPPROVED
        _ -> fail "Expected one of the constants in the oneOf schema"