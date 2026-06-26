{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ConnectedAccountIntegrationResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.AccountResponse
import Muffle.Discord.Generated.Schemas.ConnectedAccountGuildResponse
import Muffle.Discord.Generated.Schemas.IntegrationTypes

data ConnectedAccountIntegrationResponse = ConnectedAccountIntegrationResponse
    { account :: AccountResponse
    , guild :: ConnectedAccountGuildResponse
    , id :: String
    , type' :: IntegrationTypes
    }
    deriving (Show, Eq, Generic)
