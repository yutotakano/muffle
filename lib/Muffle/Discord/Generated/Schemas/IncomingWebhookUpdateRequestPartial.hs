{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.IncomingWebhookUpdateRequestPartial where

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
newtype IncomingWebhookUpdateRequestPartialComponentsNullableInner = IncomingWebhookUpdateRequestPartialComponentsNullableInner [IncomingWebhookUpdateRequestPartialComponentsNullableInnerItem]
    deriving (Show, Eq, Generic)
data IncomingWebhookUpdateRequestPartialComponentsNullableInnerItem = IncomingWebhookUpdateRequestPartialComponentsNullableInnerItem0 ActionRowComponentForMessageRequest | IncomingWebhookUpdateRequestPartialComponentsNullableInnerItem1 ContainerComponentForMessageRequest | IncomingWebhookUpdateRequestPartialComponentsNullableInnerItem2 FileComponentForMessageRequest | IncomingWebhookUpdateRequestPartialComponentsNullableInnerItem3 MediaGalleryComponentForMessageRequest | IncomingWebhookUpdateRequestPartialComponentsNullableInnerItem4 SectionComponentForMessageRequest | IncomingWebhookUpdateRequestPartialComponentsNullableInnerItem5 SeparatorComponentForMessageRequest | IncomingWebhookUpdateRequestPartialComponentsNullableInnerItem6 TextDisplayComponentForMessageRequest
    deriving (Show, Eq, Generic)
