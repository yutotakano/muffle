{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ActionRowComponentForMessageRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.MessageComponentTypes
import Muffle.Discord.Generated.Schemas.ButtonComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.ChannelSelectComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.MentionableSelectComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.RoleSelectComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.StringSelectComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.UserSelectComponentForMessageRequest

data ActionRowComponentForMessageRequest = ActionRowComponentForMessageRequest
    { components :: [ActionRowComponentForMessageRequestComponentsItem]
    , id :: Maybe (Maybe Int32)
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON ActionRowComponentForMessageRequest where
    parseJSON = withObject "ActionRowComponentForMessageRequest" $ \o ->
        ActionRowComponentForMessageRequest <$>
            o .: "components"
            <*> o .: "id"
            <*> o .: "type"

data ActionRowComponentForMessageRequestComponentsItem = ActionRowComponentForMessageRequestComponentsItem0 ButtonComponentForMessageRequest | ActionRowComponentForMessageRequestComponentsItem1 ChannelSelectComponentForMessageRequest | ActionRowComponentForMessageRequestComponentsItem2 MentionableSelectComponentForMessageRequest | ActionRowComponentForMessageRequestComponentsItem3 RoleSelectComponentForMessageRequest | ActionRowComponentForMessageRequestComponentsItem4 StringSelectComponentForMessageRequest | ActionRowComponentForMessageRequestComponentsItem5 UserSelectComponentForMessageRequest
    deriving (Show, Eq, Generic)

instance FromJSON ActionRowComponentForMessageRequestComponentsItem where
    parseJSON v =
        ActionRowComponentForMessageRequestComponentsItem0 <$> parseJSON v
            <|> ActionRowComponentForMessageRequestComponentsItem1 <$> parseJSON v
            <|> ActionRowComponentForMessageRequestComponentsItem2 <$> parseJSON v
            <|> ActionRowComponentForMessageRequestComponentsItem3 <$> parseJSON v
            <|> ActionRowComponentForMessageRequestComponentsItem4 <$> parseJSON v
            <|> ActionRowComponentForMessageRequestComponentsItem5 <$> parseJSON v