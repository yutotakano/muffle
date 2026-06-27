{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GatewayBotResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.GatewayBotSessionStartLimitResponse

data GatewayBotResponse = GatewayBotResponse
    { sessionStartLimit :: GatewayBotSessionStartLimitResponse
    , shards :: Int32
    , url :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON GatewayBotResponse where
    parseJSON = withObject "GatewayBotResponse" $ \o ->
        GatewayBotResponse <$>
            o .: "session_start_limit"
            <*> o .: "shards"
            <*> o .: "url"