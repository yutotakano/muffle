{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.BulkBanUsersResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data BulkBanUsersResponse = BulkBanUsersResponse
    { bannedUsers :: [SnowflakeType]
    , failedUsers :: [SnowflakeType]
    }
    deriving (Show, Eq, Generic)

instance FromJSON BulkBanUsersResponse where
    parseJSON = withObject "BulkBanUsersResponse" $ \o ->
        BulkBanUsersResponse <$>
            o .: "banned_users"
            <*> o .: "failed_users"