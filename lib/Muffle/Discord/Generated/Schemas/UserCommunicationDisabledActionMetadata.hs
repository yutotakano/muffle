{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UserCommunicationDisabledActionMetadata where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data UserCommunicationDisabledActionMetadata = UserCommunicationDisabledActionMetadata
    { durationSeconds :: Maybe (Maybe Integer)
    }
    deriving (Show, Eq, Generic)

instance FromJSON UserCommunicationDisabledActionMetadata where
    parseJSON = withObject "UserCommunicationDisabledActionMetadata" $ \o ->
        UserCommunicationDisabledActionMetadata <$>
            o .: "duration_seconds"