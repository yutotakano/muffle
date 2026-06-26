{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.KeywordTriggerMetadata where

import Data.Int (Int32, Int64)
import GHC.Generics


data KeywordTriggerMetadata = KeywordTriggerMetadata
    { allowList :: [String]
    , keywordFilter :: [String]
    , regexPatterns :: [String]
    }
    deriving (Show, Eq, Generic)
