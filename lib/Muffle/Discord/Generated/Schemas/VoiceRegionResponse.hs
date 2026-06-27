{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.VoiceRegionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data VoiceRegionResponse = VoiceRegionResponse
    { custom :: Bool
    , deprecated :: Bool
    , id :: String
    , name :: String
    , optimal :: Bool
    }
    deriving (Show, Eq, Generic)

instance FromJSON VoiceRegionResponse where
    parseJSON = withObject "VoiceRegionResponse" $ \o ->
        VoiceRegionResponse <$>
            o .: "custom"
            <*> o .: "deprecated"
            <*> o .: "id"
            <*> o .: "name"
            <*> o .: "optimal"