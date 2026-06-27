{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.CheckboxComponentForModalRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data CheckboxComponentForModalRequest = CheckboxComponentForModalRequest
    { customId :: String
    , default' :: Maybe (Maybe Bool)
    , id :: Maybe (Maybe Int32)
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON CheckboxComponentForModalRequest where
    parseJSON = withObject "CheckboxComponentForModalRequest" $ \o ->
        CheckboxComponentForModalRequest <$>
            o .: "custom_id"
            <*> o .: "default"
            <*> o .: "id"
            <*> o .: "type"