{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.DefaultKeywordListTriggerMetadata where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.AutomodKeywordPresetType

data DefaultKeywordListTriggerMetadata = DefaultKeywordListTriggerMetadata
    { allowList :: Maybe [String]
    , presets :: Maybe [AutomodKeywordPresetType]
    }
    deriving (Show, Eq, Generic)

instance FromJSON DefaultKeywordListTriggerMetadata where
    parseJSON = withObject "DefaultKeywordListTriggerMetadata" $ \o ->
        DefaultKeywordListTriggerMetadata <$>
            o .: "allow_list"
            <*> o .: "presets"