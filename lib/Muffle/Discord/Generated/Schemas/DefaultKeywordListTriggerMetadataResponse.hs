{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.DefaultKeywordListTriggerMetadataResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.AutomodKeywordPresetType

data DefaultKeywordListTriggerMetadataResponse = DefaultKeywordListTriggerMetadataResponse
    { allowList :: [String]
    , presets :: [AutomodKeywordPresetType]
    }
    deriving (Show, Eq, Generic)
