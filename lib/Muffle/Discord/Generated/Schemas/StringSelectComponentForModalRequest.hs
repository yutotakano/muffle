{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.StringSelectComponentForModalRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.StringSelectOptionForRequest
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data StringSelectComponentForModalRequest = StringSelectComponentForModalRequest
    { customId :: String
    , disabled :: Maybe (Maybe Bool)
    , id :: Maybe (Maybe Int32)
    , maxValues :: Maybe (Maybe Integer)
    , minValues :: Maybe (Maybe Integer)
    , options :: [StringSelectOptionForRequest]
    , placeholder :: Maybe (Maybe String)
    , required :: Maybe (Maybe Bool)
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON StringSelectComponentForModalRequest where
    parseJSON = withObject "StringSelectComponentForModalRequest" $ \o ->
        StringSelectComponentForModalRequest <$>
            o .: "custom_id"
            <*> o .: "disabled"
            <*> o .: "id"
            <*> o .: "max_values"
            <*> o .: "min_values"
            <*> o .: "options"
            <*> o .: "placeholder"
            <*> o .: "required"
            <*> o .: "type"