{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UserCommunicationDisabledAction where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.UserCommunicationDisabledActionMetadata
import Muffle.Discord.Generated.Schemas.AutomodActionType

data UserCommunicationDisabledAction = UserCommunicationDisabledAction
    { metadata :: UserCommunicationDisabledActionMetadata
    , type' :: AutomodActionType
    }
    deriving (Show, Eq, Generic)

instance FromJSON UserCommunicationDisabledAction where
    parseJSON = withObject "UserCommunicationDisabledAction" $ \o ->
        UserCommunicationDisabledAction <$>
            o .: "metadata"
            <*> o .: "type"