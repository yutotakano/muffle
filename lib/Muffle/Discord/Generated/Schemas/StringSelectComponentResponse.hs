{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.StringSelectComponentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.StringSelectOptionResponse
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data StringSelectComponentResponse = StringSelectComponentResponse
    { customId :: String
    , disabled :: Maybe Bool
    , id :: Int32
    , maxValues :: Int32
    , minValues :: Int32
    , options :: [StringSelectOptionResponse]
    , placeholder :: Maybe String
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON StringSelectComponentResponse where
    parseJSON = withObject "StringSelectComponentResponse" $ \o ->
        StringSelectComponentResponse <$>
            o .: "custom_id"
            <*> o .: "disabled"
            <*> o .: "id"
            <*> o .: "max_values"
            <*> o .: "min_values"
            <*> o .: "options"
            <*> o .: "placeholder"
            <*> o .: "type"