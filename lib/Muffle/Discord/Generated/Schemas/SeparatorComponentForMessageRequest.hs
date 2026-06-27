{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.SeparatorComponentForMessageRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.MessageComponentSeparatorSpacingSize
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data SeparatorComponentForMessageRequest = SeparatorComponentForMessageRequest
    { divider :: Maybe (Maybe Bool)
    , id :: Maybe (Maybe Int32)
    , spacing :: Maybe (Maybe MessageComponentSeparatorSpacingSize)
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON SeparatorComponentForMessageRequest where
    parseJSON = withObject "SeparatorComponentForMessageRequest" $ \o ->
        SeparatorComponentForMessageRequest <$>
            o .: "divider"
            <*> o .: "id"
            <*> o .: "spacing"
            <*> o .: "type"