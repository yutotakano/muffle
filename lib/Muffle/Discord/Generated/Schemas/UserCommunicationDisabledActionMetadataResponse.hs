{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UserCommunicationDisabledActionMetadataResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data UserCommunicationDisabledActionMetadataResponse = UserCommunicationDisabledActionMetadataResponse
    { durationSeconds :: Int32
    }
    deriving (Show, Eq, Generic)

instance FromJSON UserCommunicationDisabledActionMetadataResponse where
    parseJSON = withObject "UserCommunicationDisabledActionMetadataResponse" $ \o ->
        UserCommunicationDisabledActionMetadataResponse <$>
            o .: "duration_seconds"