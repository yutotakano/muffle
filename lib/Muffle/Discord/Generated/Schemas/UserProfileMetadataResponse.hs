{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.UserProfileMetadataResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data UserProfileMetadataResponse = UserProfileMetadataResponse
    { allowList :: [String]
    , keywordFilter :: [String]
    , regexPatterns :: [String]
    }
    deriving (Show, Eq, Generic)
