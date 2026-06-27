{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.DefaultKeywordListTriggerMetadataResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.AutomodKeywordPresetType

data DefaultKeywordListTriggerMetadataResponse = DefaultKeywordListTriggerMetadataResponse
    { allowList :: [String]
    , presets :: [AutomodKeywordPresetType]
    }
    deriving (Show, Eq, Generic)

instance FromJSON DefaultKeywordListTriggerMetadataResponse where
    parseJSON = withObject "DefaultKeywordListTriggerMetadataResponse" $ \o ->
        DefaultKeywordListTriggerMetadataResponse <$>
            o .: "allow_list"
            <*> o .: "presets"