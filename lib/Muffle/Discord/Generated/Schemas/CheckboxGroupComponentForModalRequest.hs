{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.CheckboxGroupComponentForModalRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.CheckboxGroupOptionForRequest
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data CheckboxGroupComponentForModalRequest = CheckboxGroupComponentForModalRequest
    { customId :: String
    , id :: Maybe (Maybe Int32)
    , maxValues :: Maybe (Maybe Integer)
    , minValues :: Maybe (Maybe Integer)
    , options :: [CheckboxGroupOptionForRequest]
    , required :: Maybe (Maybe Bool)
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON CheckboxGroupComponentForModalRequest where
    parseJSON = withObject "CheckboxGroupComponentForModalRequest" $ \o ->
        CheckboxGroupComponentForModalRequest <$>
            o .: "custom_id"
            <*> o .: "id"
            <*> o .: "max_values"
            <*> o .: "min_values"
            <*> o .: "options"
            <*> o .: "required"
            <*> o .: "type"