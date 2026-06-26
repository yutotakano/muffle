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
    { allowedMentions :: Maybe MessageAllowedMentionsRequest
    , attachments :: [MessageAttachmentRequest]
    , components :: [IncomingWebhookInteractionRequestComponentsItem]
    , content :: Maybe String
    , embeds :: [RichEmbed]
    , flags :: Maybe Integer
    , poll :: Maybe PollCreateRequest
    , tts :: Maybe Bool
    }
    deriving (Show, Eq, Generic)
data IncomingWebhookInteractionRequestComponentsItem = IncomingWebhookInteractionRequestComponentsItem0 ActionRowComponentForMessageRequest | IncomingWebhookInteractionRequestComponentsItem1 ContainerComponentForMessageRequest | IncomingWebhookInteractionRequestComponentsItem2 FileComponentForMessageRequest | IncomingWebhookInteractionRequestComponentsItem3 MediaGalleryComponentForMessageRequest | IncomingWebhookInteractionRequestComponentsItem4 SectionComponentForMessageRequest | IncomingWebhookInteractionRequestComponentsItem5 SeparatorComponentForMessageRequest | IncomingWebhookInteractionRequestComponentsItem6 TextDisplayComponentForMessageRequest
    deriving (Show, Eq, Generic)
