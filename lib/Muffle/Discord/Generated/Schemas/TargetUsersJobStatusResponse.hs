{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.TargetUsersJobStatusResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.UInt32Type
import Muffle.Discord.Generated.Schemas.TargetUsersJobStatusTypes

data TargetUsersJobStatusResponse = TargetUsersJobStatusResponse
    { completedAt :: Maybe String
    , createdAt :: Maybe String
    , errorMessage :: Maybe String
    , processedUsers :: UInt32Type
    , status :: TargetUsersJobStatusTypes
    , totalUsers :: UInt32Type
    }
    deriving (Show, Eq, Generic)

instance FromJSON TargetUsersJobStatusResponse where
    parseJSON = withObject "TargetUsersJobStatusResponse" $ \o ->
        TargetUsersJobStatusResponse <$>
            o .: "completed_at"
            <*> o .: "created_at"
            <*> o .: "error_message"
            <*> o .: "processed_users"
            <*> o .: "status"
            <*> o .: "total_users"