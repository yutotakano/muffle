{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ActionRowComponentForModalRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.TextInputComponentForModalRequest
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data ActionRowComponentForModalRequest = ActionRowComponentForModalRequest
    { components :: [TextInputComponentForModalRequest]
    , id :: Maybe (Maybe Int32)
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON ActionRowComponentForModalRequest where
    parseJSON = withObject "ActionRowComponentForModalRequest" $ \o ->
        ActionRowComponentForModalRequest <$>
            o .: "components"
            <*> o .: "id"
            <*> o .: "type"