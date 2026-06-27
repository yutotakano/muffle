{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.CheckboxGroupOptionForRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data CheckboxGroupOptionForRequest = CheckboxGroupOptionForRequest
    { default' :: Maybe (Maybe Bool)
    , description :: Maybe (Maybe String)
    , label :: String
    , value :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON CheckboxGroupOptionForRequest where
    parseJSON = withObject "CheckboxGroupOptionForRequest" $ \o ->
        CheckboxGroupOptionForRequest <$>
            o .: "default"
            <*> o .: "description"
            <*> o .: "label"
            <*> o .: "value"