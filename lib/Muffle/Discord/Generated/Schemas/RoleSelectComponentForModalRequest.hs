{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.RoleSelectComponentForModalRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.RoleSelectDefaultValue
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data RoleSelectComponentForModalRequest = RoleSelectComponentForModalRequest
    { customId :: String
    , defaultValues :: Maybe [RoleSelectDefaultValue]
    , disabled :: Maybe (Maybe Bool)
    , id :: Maybe (Maybe Int32)
    , maxValues :: Maybe (Maybe Integer)
    , minValues :: Maybe (Maybe Integer)
    , placeholder :: Maybe (Maybe String)
    , required :: Maybe (Maybe Bool)
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON RoleSelectComponentForModalRequest where
    parseJSON = withObject "RoleSelectComponentForModalRequest" $ \o ->
        RoleSelectComponentForModalRequest <$>
            o .: "custom_id"
            <*> o .: "default_values"
            <*> o .: "disabled"
            <*> o .: "id"
            <*> o .: "max_values"
            <*> o .: "min_values"
            <*> o .: "placeholder"
            <*> o .: "required"
            <*> o .: "type"