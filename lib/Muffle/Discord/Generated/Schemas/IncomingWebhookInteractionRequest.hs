{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.IncomingWebhookInteractionRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
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

data IncomingWebhookInteractionRequest = IncomingWebhookInteractionRequest
    { allowedMentions :: Maybe (Maybe MessageAllowedMentionsRequest)
    , attachments :: Maybe [MessageAttachmentRequest]
    , components :: Maybe IncomingWebhookInteractionRequestComponentsNullableInner
    , content :: Maybe (Maybe String)
    , embeds :: Maybe [RichEmbed]
    , flags :: Maybe (Maybe Integer)
    , poll :: Maybe (Maybe PollCreateRequest)
    , tts :: Maybe (Maybe Bool)
    }
    deriving (Show, Eq, Generic)
newtype IncomingWebhookInteractionRequestComponentsNullableInner = IncomingWebhookInteractionRequestComponentsNullableInner [IncomingWebhookInteractionRequestComponentsNullableInnerItem]
    deriving (Show, Eq, Generic)
data IncomingWebhookInteractionRequestComponentsNullableInnerItem = IncomingWebhookInteractionRequestComponentsNullableInnerItem0 ActionRowComponentForMessageRequest | IncomingWebhookInteractionRequestComponentsNullableInnerItem1 ContainerComponentForMessageRequest | IncomingWebhookInteractionRequestComponentsNullableInnerItem2 FileComponentForMessageRequest | IncomingWebhookInteractionRequestComponentsNullableInnerItem3 MediaGalleryComponentForMessageRequest | IncomingWebhookInteractionRequestComponentsNullableInnerItem4 SectionComponentForMessageRequest | IncomingWebhookInteractionRequestComponentsNullableInnerItem5 SeparatorComponentForMessageRequest | IncomingWebhookInteractionRequestComponentsNullableInnerItem6 TextDisplayComponentForMessageRequest
    deriving (Show, Eq, Generic)
