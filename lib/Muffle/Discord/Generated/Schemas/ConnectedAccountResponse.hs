{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ConnectedAccountResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ConnectedAccountIntegrationResponse
import Muffle.Discord.Generated.Schemas.ConnectedAccountProviders
import Muffle.Discord.Generated.Schemas.ConnectedAccountVisibility

data ConnectedAccountResponse = ConnectedAccountResponse
    { friendSync :: Bool
    , id :: String
    , integrations :: [ConnectedAccountIntegrationResponse]
    , name :: Maybe String
    , revoked :: Bool
    , showActivity :: Bool
    , twoWayLink :: Bool
    , type' :: ConnectedAccountProviders
    , verified :: Bool
    , visibility :: ConnectedAccountVisibility
    }
    deriving (Show, Eq, Generic)
