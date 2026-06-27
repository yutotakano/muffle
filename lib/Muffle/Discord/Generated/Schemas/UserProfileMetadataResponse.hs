{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UserProfileMetadataResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data UserProfileMetadataResponse = UserProfileMetadataResponse
    { allowList :: [String]
    , keywordFilter :: [String]
    , regexPatterns :: [String]
    }
    deriving (Show, Eq, Generic)

instance FromJSON UserProfileMetadataResponse where
    parseJSON = withObject "UserProfileMetadataResponse" $ \o ->
        UserProfileMetadataResponse <$>
            o .: "allow_list"
            <*> o .: "keyword_filter"
            <*> o .: "regex_patterns"