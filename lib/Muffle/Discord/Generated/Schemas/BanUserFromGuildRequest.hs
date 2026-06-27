{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.BanUserFromGuildRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data BanUserFromGuildRequest = BanUserFromGuildRequest
    { deleteMessageDays :: Maybe (Maybe Integer)
    , deleteMessageSeconds :: Maybe (Maybe Integer)
    }
    deriving (Show, Eq, Generic)

instance FromJSON BanUserFromGuildRequest where
    parseJSON = withObject "BanUserFromGuildRequest" $ \o ->
        BanUserFromGuildRequest <$>
            o .: "delete_message_days"
            <*> o .: "delete_message_seconds"