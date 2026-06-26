{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GatewayResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data GatewayResponse = GatewayResponse
    { url :: String
    }
    deriving (Show, Eq, Generic)
