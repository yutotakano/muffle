{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.UserProfileMetadata where

import Data.Int (Int32, Int64)
import GHC.Generics


data UserProfileMetadata = UserProfileMetadata
    { allowList :: Maybe [String]
    , keywordFilter :: Maybe [String]
    , regexPatterns :: Maybe [String]
    }
    deriving (Show, Eq, Generic)
