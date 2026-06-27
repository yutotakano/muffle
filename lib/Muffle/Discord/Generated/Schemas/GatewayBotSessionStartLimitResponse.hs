{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GatewayBotSessionStartLimitResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data GatewayBotSessionStartLimitResponse = GatewayBotSessionStartLimitResponse
    { maxConcurrency :: Int32
    , remaining :: Int32
    , resetAfter :: Int32
    , total :: Int32
    }
    deriving (Show, Eq, Generic)

instance FromJSON GatewayBotSessionStartLimitResponse where
    parseJSON = withObject "GatewayBotSessionStartLimitResponse" $ \o ->
        GatewayBotSessionStartLimitResponse <$>
            o .: "max_concurrency"
            <*> o .: "remaining"
            <*> o .: "reset_after"
            <*> o .: "total"