{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.IntegrationTypes where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data IntegrationTypes = IntegrationTypesDiscord | IntegrationTypesTwitch | IntegrationTypesYoutube | IntegrationTypesGuildSubscription
    deriving (Show, Eq, Generic)

instance FromJSON IntegrationTypes where
    parseJSON v = case v of
        "discord" -> pure IntegrationTypesDiscord
        "twitch" -> pure IntegrationTypesTwitch
        "youtube" -> pure IntegrationTypesYoutube
        "guild_subscription" -> pure IntegrationTypesGuildSubscription
        _ -> fail "Expected one of the constants in the oneOf schema"