{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ActionRowComponentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.MessageComponentTypes
import Muffle.Discord.Generated.Schemas.ButtonComponentResponse
import Muffle.Discord.Generated.Schemas.ChannelSelectComponentResponse
import Muffle.Discord.Generated.Schemas.MentionableSelectComponentResponse
import Muffle.Discord.Generated.Schemas.RoleSelectComponentResponse
import Muffle.Discord.Generated.Schemas.StringSelectComponentResponse
import Muffle.Discord.Generated.Schemas.TextInputComponentResponse
import Muffle.Discord.Generated.Schemas.UserSelectComponentResponse

data ActionRowComponentResponse = ActionRowComponentResponse
    { components :: [ActionRowComponentResponseComponentsItem]
    , id :: Int32
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON ActionRowComponentResponse where
    parseJSON = withObject "ActionRowComponentResponse" $ \o ->
        ActionRowComponentResponse <$>
            o .: "components"
            <*> o .: "id"
            <*> o .: "type"

data ActionRowComponentResponseComponentsItem = ActionRowComponentResponseComponentsItem0 ButtonComponentResponse | ActionRowComponentResponseComponentsItem1 ChannelSelectComponentResponse | ActionRowComponentResponseComponentsItem2 MentionableSelectComponentResponse | ActionRowComponentResponseComponentsItem3 RoleSelectComponentResponse | ActionRowComponentResponseComponentsItem4 StringSelectComponentResponse | ActionRowComponentResponseComponentsItem5 TextInputComponentResponse | ActionRowComponentResponseComponentsItem6 UserSelectComponentResponse
    deriving (Show, Eq, Generic)

instance FromJSON ActionRowComponentResponseComponentsItem where
    parseJSON v =
        ActionRowComponentResponseComponentsItem0 <$> parseJSON v
            <|> ActionRowComponentResponseComponentsItem1 <$> parseJSON v
            <|> ActionRowComponentResponseComponentsItem2 <$> parseJSON v
            <|> ActionRowComponentResponseComponentsItem3 <$> parseJSON v
            <|> ActionRowComponentResponseComponentsItem4 <$> parseJSON v
            <|> ActionRowComponentResponseComponentsItem5 <$> parseJSON v
            <|> ActionRowComponentResponseComponentsItem6 <$> parseJSON v