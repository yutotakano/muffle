{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.RadioGroupComponentForModalRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.RadioGroupOptionForRequest
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data RadioGroupComponentForModalRequest = RadioGroupComponentForModalRequest
    { customId :: String
    , id :: Maybe (Maybe Int32)
    , options :: [RadioGroupOptionForRequest]
    , required :: Maybe (Maybe Bool)
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON RadioGroupComponentForModalRequest where
    parseJSON = withObject "RadioGroupComponentForModalRequest" $ \o ->
        RadioGroupComponentForModalRequest <$>
            o .: "custom_id"
            <*> o .: "id"
            <*> o .: "options"
            <*> o .: "required"
            <*> o .: "type"