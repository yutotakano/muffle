{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UserCommunicationDisabledActionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.UserCommunicationDisabledActionMetadataResponse
import Muffle.Discord.Generated.Schemas.AutomodActionType

data UserCommunicationDisabledActionResponse = UserCommunicationDisabledActionResponse
    { metadata :: UserCommunicationDisabledActionMetadataResponse
    , type' :: AutomodActionType
    }
    deriving (Show, Eq, Generic)

instance FromJSON UserCommunicationDisabledActionResponse where
    parseJSON = withObject "UserCommunicationDisabledActionResponse" $ \o ->
        UserCommunicationDisabledActionResponse <$>
            o .: "metadata"
            <*> o .: "type"