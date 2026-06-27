{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.IncomingWebhookUpdateRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.MessageAllowedMentionsRequest
import Muffle.Discord.Generated.Schemas.MessageAttachmentRequest
import Muffle.Discord.Generated.Schemas.RichEmbed
import Muffle.Discord.Generated.Schemas.PollCreateRequest
import Muffle.Discord.Generated.Schemas.ActionRowComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.ContainerComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.FileComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.MediaGalleryComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.SectionComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.SeparatorComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.TextDisplayComponentForMessageRequest

data IncomingWebhookUpdateRequestPartial = IncomingWebhookUpdateRequestPartial
    { allowedMentions :: Maybe (Maybe MessageAllowedMentionsRequest)
    , attachments :: Maybe [MessageAttachmentRequest]
    , components :: Maybe IncomingWebhookUpdateRequestPartialComponentsNullableInner
    , content :: Maybe (Maybe String)
    , embeds :: Maybe [RichEmbed]
    , flags :: Maybe (Maybe Integer)
    , poll :: Maybe (Maybe PollCreateRequest)
    }
    deriving (Show, Eq, Generic)

instance FromJSON IncomingWebhookUpdateRequestPartial where
    parseJSON = withObject "IncomingWebhookUpdateRequestPartial" $ \o ->
        IncomingWebhookUpdateRequestPartial <$>
            o .: "allowed_mentions"
            <*> o .: "attachments"
            <*> o .: "components"
            <*> o .: "content"
            <*> o .: "embeds"
            <*> o .: "flags"
            <*> o .: "poll"

newtype IncomingWebhookUpdateRequestPartialComponentsNullableInner = IncomingWebhookUpdateRequestPartialComponentsNullableInner [IncomingWebhookUpdateRequestPartialComponentsNullableInnerItem]
    deriving (Show, Eq, Generic)

instance FromJSON IncomingWebhookUpdateRequestPartialComponentsNullableInner where
    parseJSON v = IncomingWebhookUpdateRequestPartialComponentsNullableInner <$> parseJSON v

data IncomingWebhookUpdateRequestPartialComponentsNullableInnerItem = IncomingWebhookUpdateRequestPartialComponentsNullableInnerItem0 ActionRowComponentForMessageRequest | IncomingWebhookUpdateRequestPartialComponentsNullableInnerItem1 ContainerComponentForMessageRequest | IncomingWebhookUpdateRequestPartialComponentsNullableInnerItem2 FileComponentForMessageRequest | IncomingWebhookUpdateRequestPartialComponentsNullableInnerItem3 MediaGalleryComponentForMessageRequest | IncomingWebhookUpdateRequestPartialComponentsNullableInnerItem4 SectionComponentForMessageRequest | IncomingWebhookUpdateRequestPartialComponentsNullableInnerItem5 SeparatorComponentForMessageRequest | IncomingWebhookUpdateRequestPartialComponentsNullableInnerItem6 TextDisplayComponentForMessageRequest
    deriving (Show, Eq, Generic)

instance FromJSON IncomingWebhookUpdateRequestPartialComponentsNullableInnerItem where
    parseJSON v =
        IncomingWebhookUpdateRequestPartialComponentsNullableInnerItem0 <$> parseJSON v
            <|> IncomingWebhookUpdateRequestPartialComponentsNullableInnerItem1 <$> parseJSON v
            <|> IncomingWebhookUpdateRequestPartialComponentsNullableInnerItem2 <$> parseJSON v
            <|> IncomingWebhookUpdateRequestPartialComponentsNullableInnerItem3 <$> parseJSON v
            <|> IncomingWebhookUpdateRequestPartialComponentsNullableInnerItem4 <$> parseJSON v
            <|> IncomingWebhookUpdateRequestPartialComponentsNullableInnerItem5 <$> parseJSON v
            <|> IncomingWebhookUpdateRequestPartialComponentsNullableInnerItem6 <$> parseJSON v