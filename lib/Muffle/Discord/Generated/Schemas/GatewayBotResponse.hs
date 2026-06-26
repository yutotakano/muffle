{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GatewayBotResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.GatewayBotSessionStartLimitResponse

data GatewayBotResponse = GatewayBotResponse
    { sessionStartLimit :: GatewayBotSessionStartLimitResponse
    , shards :: Int32
    , url :: String
    }
    deriving (Show, Eq, Generic)
