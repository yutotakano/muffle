{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandAutocompleteCallbackRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.InteractionCallbackTypes
import Muffle.Discord.Generated.Schemas.InteractionApplicationCommandAutocompleteCallbackIntegerData
import Muffle.Discord.Generated.Schemas.InteractionApplicationCommandAutocompleteCallbackNumberData
import Muffle.Discord.Generated.Schemas.InteractionApplicationCommandAutocompleteCallbackStringData

data ApplicationCommandAutocompleteCallbackRequest = ApplicationCommandAutocompleteCallbackRequest
    { data' :: ApplicationCommandAutocompleteCallbackRequestData
    , type' :: InteractionCallbackTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandAutocompleteCallbackRequest where
    parseJSON = withObject "ApplicationCommandAutocompleteCallbackRequest" $ \o ->
        ApplicationCommandAutocompleteCallbackRequest <$>
            o .: "data"
            <*> o .: "type"

data ApplicationCommandAutocompleteCallbackRequestData = ApplicationCommandAutocompleteCallbackRequestData0 InteractionApplicationCommandAutocompleteCallbackIntegerData | ApplicationCommandAutocompleteCallbackRequestData1 InteractionApplicationCommandAutocompleteCallbackNumberData | ApplicationCommandAutocompleteCallbackRequestData2 InteractionApplicationCommandAutocompleteCallbackStringData
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandAutocompleteCallbackRequestData where
    parseJSON v =
        ApplicationCommandAutocompleteCallbackRequestData0 <$> parseJSON v
            <|> ApplicationCommandAutocompleteCallbackRequestData1 <$> parseJSON v
            <|> ApplicationCommandAutocompleteCallbackRequestData2 <$> parseJSON v