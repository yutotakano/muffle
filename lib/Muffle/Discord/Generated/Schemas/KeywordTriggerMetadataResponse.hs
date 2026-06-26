{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.KeywordTriggerMetadataResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data KeywordTriggerMetadataResponse = KeywordTriggerMetadataResponse
    { allowList :: [String]
    , keywordFilter :: [String]
    , regexPatterns :: [String]
    }
    deriving (Show, Eq, Generic)
