{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GatewayBotSessionStartLimitResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data GatewayBotSessionStartLimitResponse = GatewayBotSessionStartLimitResponse
    { maxConcurrency :: Int32
    , remaining :: Int32
    , resetAfter :: Int32
    , total :: Int32
    }
    deriving (Show, Eq, Generic)
