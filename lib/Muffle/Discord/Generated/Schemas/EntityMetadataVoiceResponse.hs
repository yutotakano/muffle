{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.EntityMetadataVoiceResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data EntityMetadataVoiceResponse = EntityMetadataVoiceResponse
    deriving (Show, Eq, Generic)

instance FromJSON EntityMetadataVoiceResponse where
    parseJSON = withObject "EntityMetadataVoiceResponse" $ \_ -> pure EntityMetadataVoiceResponse