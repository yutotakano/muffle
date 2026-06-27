{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.SectionComponentForMessageRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.TextDisplayComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.MessageComponentTypes
import Muffle.Discord.Generated.Schemas.ButtonComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.ThumbnailComponentForMessageRequest

data SectionComponentForMessageRequest = SectionComponentForMessageRequest
    { accessory :: SectionComponentForMessageRequestAccessory
    , components :: [TextDisplayComponentForMessageRequest]
    , id :: Maybe (Maybe Int32)
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON SectionComponentForMessageRequest where
    parseJSON = withObject "SectionComponentForMessageRequest" $ \o ->
        SectionComponentForMessageRequest <$>
            o .: "accessory"
            <*> o .: "components"
            <*> o .: "id"
            <*> o .: "type"

data SectionComponentForMessageRequestAccessory = SectionComponentForMessageRequestAccessory0 ButtonComponentForMessageRequest | SectionComponentForMessageRequestAccessory1 ThumbnailComponentForMessageRequest
    deriving (Show, Eq, Generic)

instance FromJSON SectionComponentForMessageRequestAccessory where
    parseJSON v =
        SectionComponentForMessageRequestAccessory0 <$> parseJSON v
            <|> SectionComponentForMessageRequestAccessory1 <$> parseJSON v