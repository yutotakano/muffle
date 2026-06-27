{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UserSelectComponentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.UserSelectDefaultValueResponse
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data UserSelectComponentResponse = UserSelectComponentResponse
    { customId :: String
    , defaultValues :: Maybe [UserSelectDefaultValueResponse]
    , disabled :: Maybe Bool
    , id :: Int32
    , maxValues :: Int32
    , minValues :: Int32
    , placeholder :: Maybe String
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON UserSelectComponentResponse where
    parseJSON = withObject "UserSelectComponentResponse" $ \o ->
        UserSelectComponentResponse <$>
            o .: "custom_id"
            <*> o .: "default_values"
            <*> o .: "disabled"
            <*> o .: "id"
            <*> o .: "max_values"
            <*> o .: "min_values"
            <*> o .: "placeholder"
            <*> o .: "type"