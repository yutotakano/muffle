{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.KeywordTriggerMetadata where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data KeywordTriggerMetadata = KeywordTriggerMetadata
    { allowList :: Maybe [String]
    , keywordFilter :: Maybe [String]
    , regexPatterns :: Maybe [String]
    }
    deriving (Show, Eq, Generic)

instance FromJSON KeywordTriggerMetadata where
    parseJSON = withObject "KeywordTriggerMetadata" $ \o ->
        KeywordTriggerMetadata <$>
            o .: "allow_list"
            <*> o .: "keyword_filter"
            <*> o .: "regex_patterns"