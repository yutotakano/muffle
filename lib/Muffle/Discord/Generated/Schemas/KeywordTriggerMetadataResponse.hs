{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.KeywordTriggerMetadataResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data KeywordTriggerMetadataResponse = KeywordTriggerMetadataResponse
    { allowList :: [String]
    , keywordFilter :: [String]
    , regexPatterns :: [String]
    }
    deriving (Show, Eq, Generic)

instance FromJSON KeywordTriggerMetadataResponse where
    parseJSON = withObject "KeywordTriggerMetadataResponse" $ \o ->
        KeywordTriggerMetadataResponse <$>
            o .: "allow_list"
            <*> o .: "keyword_filter"
            <*> o .: "regex_patterns"