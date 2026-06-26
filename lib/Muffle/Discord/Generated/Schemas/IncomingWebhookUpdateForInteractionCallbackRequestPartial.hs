{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.IncomingWebhookUpdateForInteractionCallbackRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
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
    { allowedMentions :: Maybe MessageAllowedMentionsRequest
    , attachments :: [MessageAttachmentRequest]
    , components :: [IncomingWebhookUpdateForInteractionCallbackRequestPartialComponentsItem]
    , content :: Maybe String
    , embeds :: [RichEmbed]
    , flags :: Maybe Integer
    }
    deriving (Show, Eq, Generic)
data IncomingWebhookUpdateForInteractionCallbackRequestPartialComponentsItem = IncomingWebhookUpdateForInteractionCallbackRequestPartialComponentsItem0 ActionRowComponentForMessageRequest | IncomingWebhookUpdateForInteractionCallbackRequestPartialComponentsItem1 ContainerComponentForMessageRequest | IncomingWebhookUpdateForInteractionCallbackRequestPartialComponentsItem2 FileComponentForMessageRequest | IncomingWebhookUpdateForInteractionCallbackRequestPartialComponentsItem3 MediaGalleryComponentForMessageRequest | IncomingWebhookUpdateForInteractionCallbackRequestPartialComponentsItem4 SectionComponentForMessageRequest | IncomingWebhookUpdateForInteractionCallbackRequestPartialComponentsItem5 SeparatorComponentForMessageRequest | IncomingWebhookUpdateForInteractionCallbackRequestPartialComponentsItem6 TextDisplayComponentForMessageRequest
    deriving (Show, Eq, Generic)
