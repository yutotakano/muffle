{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.SectionComponentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.TextDisplayComponentResponse
import Muffle.Discord.Generated.Schemas.MessageComponentTypes
import Muffle.Discord.Generated.Schemas.ButtonComponentResponse
import Muffle.Discord.Generated.Schemas.ThumbnailComponentResponse

data SectionComponentResponse = SectionComponentResponse
    { accessory :: SectionComponentResponseAccessory
    , components :: [TextDisplayComponentResponse]
    , id :: Int32
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON SectionComponentResponse where
    parseJSON = withObject "SectionComponentResponse" $ \o ->
        SectionComponentResponse <$>
            o .: "accessory"
            <*> o .: "components"
            <*> o .: "id"
            <*> o .: "type"

data SectionComponentResponseAccessory = SectionComponentResponseAccessory0 ButtonComponentResponse | SectionComponentResponseAccessory1 ThumbnailComponentResponse
    deriving (Show, Eq, Generic)

instance FromJSON SectionComponentResponseAccessory where
    parseJSON v =
        SectionComponentResponseAccessory0 <$> parseJSON v
            <|> SectionComponentResponseAccessory1 <$> parseJSON v