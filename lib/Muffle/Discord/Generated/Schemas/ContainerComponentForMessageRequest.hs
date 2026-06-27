{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ContainerComponentForMessageRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.MessageComponentTypes
import Muffle.Discord.Generated.Schemas.ActionRowComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.FileComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.MediaGalleryComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.SectionComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.SeparatorComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.TextDisplayComponentForMessageRequest

data ContainerComponentForMessageRequest = ContainerComponentForMessageRequest
    { accentColor :: Maybe (Maybe Integer)
    , components :: [ContainerComponentForMessageRequestComponentsItem]
    , id :: Maybe (Maybe Int32)
    , spoiler :: Maybe (Maybe Bool)
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON ContainerComponentForMessageRequest where
    parseJSON = withObject "ContainerComponentForMessageRequest" $ \o ->
        ContainerComponentForMessageRequest <$>
            o .: "accent_color"
            <*> o .: "components"
            <*> o .: "id"
            <*> o .: "spoiler"
            <*> o .: "type"

data ContainerComponentForMessageRequestComponentsItem = ContainerComponentForMessageRequestComponentsItem0 ActionRowComponentForMessageRequest | ContainerComponentForMessageRequestComponentsItem1 FileComponentForMessageRequest | ContainerComponentForMessageRequestComponentsItem2 MediaGalleryComponentForMessageRequest | ContainerComponentForMessageRequestComponentsItem3 SectionComponentForMessageRequest | ContainerComponentForMessageRequestComponentsItem4 SeparatorComponentForMessageRequest | ContainerComponentForMessageRequestComponentsItem5 TextDisplayComponentForMessageRequest
    deriving (Show, Eq, Generic)

instance FromJSON ContainerComponentForMessageRequestComponentsItem where
    parseJSON v =
        ContainerComponentForMessageRequestComponentsItem0 <$> parseJSON v
            <|> ContainerComponentForMessageRequestComponentsItem1 <$> parseJSON v
            <|> ContainerComponentForMessageRequestComponentsItem2 <$> parseJSON v
            <|> ContainerComponentForMessageRequestComponentsItem3 <$> parseJSON v
            <|> ContainerComponentForMessageRequestComponentsItem4 <$> parseJSON v
            <|> ContainerComponentForMessageRequestComponentsItem5 <$> parseJSON v