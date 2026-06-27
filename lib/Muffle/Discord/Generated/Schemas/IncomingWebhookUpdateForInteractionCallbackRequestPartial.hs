{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.IncomingWebhookUpdateForInteractionCallbackRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.MessageAllowedMentionsRequest
import Muffle.Discord.Generated.Schemas.MessageAttachmentRequest
import Muffle.Discord.Generated.Schemas.RichEmbed
import Muffle.Discord.Generated.Schemas.ActionRowComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.ContainerComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.FileComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.MediaGalleryComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.SectionComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.SeparatorComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.TextDisplayComponentForMessageRequest

data IncomingWebhookUpdateForInteractionCallbackRequestPartial = IncomingWebhookUpdateForInteractionCallbackRequestPartial
    { allowedMentions :: Maybe (Maybe MessageAllowedMentionsRequest)
    , attachments :: Maybe [MessageAttachmentRequest]
    , components :: Maybe IncomingWebhookUpdateForInteractionCallbackRequestPartialComponentsNullableInner
    , content :: Maybe (Maybe String)
    , embeds :: Maybe [RichEmbed]
    , flags :: Maybe (Maybe Integer)
    }
    deriving (Show, Eq, Generic)

instance FromJSON IncomingWebhookUpdateForInteractionCallbackRequestPartial where
    parseJSON = withObject "IncomingWebhookUpdateForInteractionCallbackRequestPartial" $ \o ->
        IncomingWebhookUpdateForInteractionCallbackRequestPartial <$>
            o .: "allowed_mentions"
            <*> o .: "attachments"
            <*> o .: "components"
            <*> o .: "content"
            <*> o .: "embeds"
            <*> o .: "flags"

newtype IncomingWebhookUpdateForInteractionCallbackRequestPartialComponentsNullableInner = IncomingWebhookUpdateForInteractionCallbackRequestPartialComponentsNullableInner [IncomingWebhookUpdateForInteractionCallbackRequestPartialComponentsNullableInnerItem]
    deriving (Show, Eq, Generic)

instance FromJSON IncomingWebhookUpdateForInteractionCallbackRequestPartialComponentsNullableInner where
    parseJSON v = IncomingWebhookUpdateForInteractionCallbackRequestPartialComponentsNullableInner <$> parseJSON v

data IncomingWebhookUpdateForInteractionCallbackRequestPartialComponentsNullableInnerItem = IncomingWebhookUpdateForInteractionCallbackRequestPartialComponentsNullableInnerItem0 ActionRowComponentForMessageRequest | IncomingWebhookUpdateForInteractionCallbackRequestPartialComponentsNullableInnerItem1 ContainerComponentForMessageRequest | IncomingWebhookUpdateForInteractionCallbackRequestPartialComponentsNullableInnerItem2 FileComponentForMessageRequest | IncomingWebhookUpdateForInteractionCallbackRequestPartialComponentsNullableInnerItem3 MediaGalleryComponentForMessageRequest | IncomingWebhookUpdateForInteractionCallbackRequestPartialComponentsNullableInnerItem4 SectionComponentForMessageRequest | IncomingWebhookUpdateForInteractionCallbackRequestPartialComponentsNullableInnerItem5 SeparatorComponentForMessageRequest | IncomingWebhookUpdateForInteractionCallbackRequestPartialComponentsNullableInnerItem6 TextDisplayComponentForMessageRequest
    deriving (Show, Eq, Generic)

instance FromJSON IncomingWebhookUpdateForInteractionCallbackRequestPartialComponentsNullableInnerItem where
    parseJSON v =
        IncomingWebhookUpdateForInteractionCallbackRequestPartialComponentsNullableInnerItem0 <$> parseJSON v
            <|> IncomingWebhookUpdateForInteractionCallbackRequestPartialComponentsNullableInnerItem1 <$> parseJSON v
            <|> IncomingWebhookUpdateForInteractionCallbackRequestPartialComponentsNullableInnerItem2 <$> parseJSON v
            <|> IncomingWebhookUpdateForInteractionCallbackRequestPartialComponentsNullableInnerItem3 <$> parseJSON v
            <|> IncomingWebhookUpdateForInteractionCallbackRequestPartialComponentsNullableInnerItem4 <$> parseJSON v
            <|> IncomingWebhookUpdateForInteractionCallbackRequestPartialComponentsNullableInnerItem5 <$> parseJSON v
            <|> IncomingWebhookUpdateForInteractionCallbackRequestPartialComponentsNullableInnerItem6 <$> parseJSON v