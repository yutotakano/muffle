{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.RadioGroupOptionForRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data RadioGroupOptionForRequest = RadioGroupOptionForRequest
    { default' :: Maybe (Maybe Bool)
    , description :: Maybe (Maybe String)
    , label :: String
    , value :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON RadioGroupOptionForRequest where
    parseJSON = withObject "RadioGroupOptionForRequest" $ \o ->
        RadioGroupOptionForRequest <$>
            o .: "default"
            <*> o .: "description"
            <*> o .: "label"
            <*> o .: "value"