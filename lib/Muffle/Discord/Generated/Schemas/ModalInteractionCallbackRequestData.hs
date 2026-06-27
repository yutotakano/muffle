{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ModalInteractionCallbackRequestData where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ActionRowComponentForModalRequest
import Muffle.Discord.Generated.Schemas.LabelComponentForModalRequest
import Muffle.Discord.Generated.Schemas.TextDisplayComponentForModalRequest

data ModalInteractionCallbackRequestData = ModalInteractionCallbackRequestData
    { components :: [ModalInteractionCallbackRequestDataComponentsItem]
    , customId :: String
    , title :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON ModalInteractionCallbackRequestData where
    parseJSON = withObject "ModalInteractionCallbackRequestData" $ \o ->
        ModalInteractionCallbackRequestData <$>
            o .: "components"
            <*> o .: "custom_id"
            <*> o .: "title"

data ModalInteractionCallbackRequestDataComponentsItem = ModalInteractionCallbackRequestDataComponentsItem0 ActionRowComponentForModalRequest | ModalInteractionCallbackRequestDataComponentsItem1 LabelComponentForModalRequest | ModalInteractionCallbackRequestDataComponentsItem2 TextDisplayComponentForModalRequest
    deriving (Show, Eq, Generic)

instance FromJSON ModalInteractionCallbackRequestDataComponentsItem where
    parseJSON v =
        ModalInteractionCallbackRequestDataComponentsItem0 <$> parseJSON v
            <|> ModalInteractionCallbackRequestDataComponentsItem1 <$> parseJSON v
            <|> ModalInteractionCallbackRequestDataComponentsItem2 <$> parseJSON v