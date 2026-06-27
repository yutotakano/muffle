{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UserProfileMetadata where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data UserProfileMetadata = UserProfileMetadata
    { allowList :: Maybe [String]
    , keywordFilter :: Maybe [String]
    , regexPatterns :: Maybe [String]
    }
    deriving (Show, Eq, Generic)

instance FromJSON UserProfileMetadata where
    parseJSON = withObject "UserProfileMetadata" $ \o ->
        UserProfileMetadata <$>
            o .: "allow_list"
            <*> o .: "keyword_filter"
            <*> o .: "regex_patterns"