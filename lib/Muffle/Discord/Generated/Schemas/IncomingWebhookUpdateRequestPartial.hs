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
    { allowedMentions :: Maybe MessageAllowedMentionsRequest
    , attachments :: [MessageAttachmentRequest]
    , components :: [IncomingWebhookUpdateRequestPartialComponentsItem]
    , content :: Maybe String
    , embeds :: [RichEmbed]
    , flags :: Maybe Integer
    , poll :: Maybe PollCreateRequest
    }
    deriving (Show, Eq, Generic)
data IncomingWebhookUpdateRequestPartialComponentsItem = IncomingWebhookUpdateRequestPartialComponentsItem0 ActionRowComponentForMessageRequest | IncomingWebhookUpdateRequestPartialComponentsItem1 ContainerComponentForMessageRequest | IncomingWebhookUpdateRequestPartialComponentsItem2 FileComponentForMessageRequest | IncomingWebhookUpdateRequestPartialComponentsItem3 MediaGalleryComponentForMessageRequest | IncomingWebhookUpdateRequestPartialComponentsItem4 SectionComponentForMessageRequest | IncomingWebhookUpdateRequestPartialComponentsItem5 SeparatorComponentForMessageRequest | IncomingWebhookUpdateRequestPartialComponentsItem6 TextDisplayComponentForMessageRequest
    deriving (Show, Eq, Generic)
