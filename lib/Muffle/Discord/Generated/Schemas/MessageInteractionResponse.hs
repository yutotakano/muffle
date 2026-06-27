{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MessageInteractionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.InteractionTypes
import Muffle.Discord.Generated.Schemas.UserResponse

data MessageInteractionResponse = MessageInteractionResponse
    { id :: SnowflakeType
    , name :: String
    , nameLocalized :: Maybe String
    , type' :: InteractionTypes
    , user :: Maybe UserResponse
    }
    deriving (Show, Eq, Generic)

instance FromJSON MessageInteractionResponse where
    parseJSON = withObject "MessageInteractionResponse" $ \o ->
        MessageInteractionResponse <$>
            o .: "id"
            <*> o .: "name"
            <*> o .: "name_localized"
            <*> o .: "type"
            <*> o .: "user"