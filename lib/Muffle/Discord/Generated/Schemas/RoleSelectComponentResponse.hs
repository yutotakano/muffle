{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.RoleSelectComponentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.RoleSelectDefaultValueResponse
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data RoleSelectComponentResponse = RoleSelectComponentResponse
    { customId :: String
    , defaultValues :: Maybe [RoleSelectDefaultValueResponse]
    , disabled :: Maybe Bool
    , id :: Int32
    , maxValues :: Int32
    , minValues :: Int32
    , placeholder :: Maybe String
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON RoleSelectComponentResponse where
    parseJSON = withObject "RoleSelectComponentResponse" $ \o ->
        RoleSelectComponentResponse <$>
            o .: "custom_id"
            <*> o .: "default_values"
            <*> o .: "disabled"
            <*> o .: "id"
            <*> o .: "max_values"
            <*> o .: "min_values"
            <*> o .: "placeholder"
            <*> o .: "type"