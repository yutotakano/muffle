{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.IntegrationTypes where

import Data.Int (Int32, Int64)
import GHC.Generics


data IntegrationTypes = IntegrationTypesDiscord | IntegrationTypesTwitch | IntegrationTypesYoutube | IntegrationTypesGuildSubscription
    deriving (Show, Eq, Generic)
