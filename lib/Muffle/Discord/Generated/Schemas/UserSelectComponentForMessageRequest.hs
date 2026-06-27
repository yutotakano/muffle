{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UserSelectComponentForMessageRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.UserSelectDefaultValue
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data UserSelectComponentForMessageRequest = UserSelectComponentForMessageRequest
    { customId :: String
    , defaultValues :: Maybe [UserSelectDefaultValue]
    , disabled :: Maybe (Maybe Bool)
    , id :: Maybe (Maybe Int32)
    , maxValues :: Maybe (Maybe Integer)
    , minValues :: Maybe (Maybe Integer)
    , placeholder :: Maybe (Maybe String)
    , required :: Maybe (Maybe Bool)
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON UserSelectComponentForMessageRequest where
    parseJSON = withObject "UserSelectComponentForMessageRequest" $ \o ->
        UserSelectComponentForMessageRequest <$>
            o .: "custom_id"
            <*> o .: "default_values"
            <*> o .: "disabled"
            <*> o .: "id"
            <*> o .: "max_values"
            <*> o .: "min_values"
            <*> o .: "placeholder"
            <*> o .: "required"
            <*> o .: "type"