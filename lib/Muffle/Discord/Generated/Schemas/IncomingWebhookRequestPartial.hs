{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.IncomingWebhookRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.MessageAllowedMentionsRequest
import Muffle.Discord.Generated.Schemas.SnowflakeType
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

data IncomingWebhookRequestPartial = IncomingWebhookRequestPartial
    { allowedMentions :: Maybe MessageAllowedMentionsRequest
    , appliedTags :: [SnowflakeType]
    , attachments :: [MessageAttachmentRequest]
    , avatarUrl :: Maybe String
    , components :: [IncomingWebhookRequestPartialComponentsItem]
    , content :: Maybe String
    , embeds :: [RichEmbed]
    , flags :: Maybe Integer
    , poll :: Maybe PollCreateRequest
    , threadName :: Maybe String
    , tts :: Maybe Bool
    , username :: Maybe String
    }
    deriving (Show, Eq, Generic)
data IncomingWebhookRequestPartialComponentsItem = IncomingWebhookRequestPartialComponentsItem0 ActionRowComponentForMessageRequest | IncomingWebhookRequestPartialComponentsItem1 ContainerComponentForMessageRequest | IncomingWebhookRequestPartialComponentsItem2 FileComponentForMessageRequest | IncomingWebhookRequestPartialComponentsItem3 MediaGalleryComponentForMessageRequest | IncomingWebhookRequestPartialComponentsItem4 SectionComponentForMessageRequest | IncomingWebhookRequestPartialComponentsItem5 SeparatorComponentForMessageRequest | IncomingWebhookRequestPartialComponentsItem6 TextDisplayComponentForMessageRequest
    deriving (Show, Eq, Generic)
