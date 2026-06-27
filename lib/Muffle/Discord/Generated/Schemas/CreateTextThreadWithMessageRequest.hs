{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.CreateTextThreadWithMessageRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ThreadAutoArchiveDuration

data CreateTextThreadWithMessageRequest = CreateTextThreadWithMessageRequest
    { autoArchiveDuration :: Maybe (Maybe ThreadAutoArchiveDuration)
    , name :: String
    , rateLimitPerUser :: Maybe (Maybe Integer)
    }
    deriving (Show, Eq, Generic)

instance FromJSON CreateTextThreadWithMessageRequest where
    parseJSON = withObject "CreateTextThreadWithMessageRequest" $ \o ->
        CreateTextThreadWithMessageRequest <$>
            o .: "auto_archive_duration"
            <*> o .: "name"
            <*> o .: "rate_limit_per_user"