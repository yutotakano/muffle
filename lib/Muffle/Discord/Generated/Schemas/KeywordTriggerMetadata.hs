{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.KeywordTriggerMetadata where

import Data.Int (Int32, Int64)
import GHC.Generics


data KeywordTriggerMetadata = KeywordTriggerMetadata
    { allowList :: Maybe [String]
    , keywordFilter :: Maybe [String]
    , regexPatterns :: Maybe [String]
    }
    deriving (Show, Eq, Generic)
