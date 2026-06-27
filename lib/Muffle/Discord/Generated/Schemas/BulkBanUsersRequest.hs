{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.BulkBanUsersRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data BulkBanUsersRequest = BulkBanUsersRequest
    { deleteMessageSeconds :: Maybe (Maybe Integer)
    , userIds :: [SnowflakeType]
    }
    deriving (Show, Eq, Generic)

instance FromJSON BulkBanUsersRequest where
    parseJSON = withObject "BulkBanUsersRequest" $ \o ->
        BulkBanUsersRequest <$>
            o .: "delete_message_seconds"
            <*> o .: "user_ids"