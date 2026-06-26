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
    { allowedMentions :: Maybe (Maybe MessageAllowedMentionsRequest)
    , appliedTags :: Maybe [SnowflakeType]
    , attachments :: Maybe [MessageAttachmentRequest]
    , avatarUrl :: Maybe (Maybe String)
    , components :: Maybe IncomingWebhookRequestPartialComponentsNullableInner
    , content :: Maybe (Maybe String)
    , embeds :: Maybe [RichEmbed]
    , flags :: Maybe (Maybe Integer)
    , poll :: Maybe (Maybe PollCreateRequest)
    , threadName :: Maybe (Maybe String)
    , tts :: Maybe (Maybe Bool)
    , username :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)
newtype IncomingWebhookRequestPartialComponentsNullableInner = IncomingWebhookRequestPartialComponentsNullableInner [IncomingWebhookRequestPartialComponentsNullableInnerItem]
    deriving (Show, Eq, Generic)
data IncomingWebhookRequestPartialComponentsNullableInnerItem = IncomingWebhookRequestPartialComponentsNullableInnerItem0 ActionRowComponentForMessageRequest | IncomingWebhookRequestPartialComponentsNullableInnerItem1 ContainerComponentForMessageRequest | IncomingWebhookRequestPartialComponentsNullableInnerItem2 FileComponentForMessageRequest | IncomingWebhookRequestPartialComponentsNullableInnerItem3 MediaGalleryComponentForMessageRequest | IncomingWebhookRequestPartialComponentsNullableInnerItem4 SectionComponentForMessageRequest | IncomingWebhookRequestPartialComponentsNullableInnerItem5 SeparatorComponentForMessageRequest | IncomingWebhookRequestPartialComponentsNullableInnerItem6 TextDisplayComponentForMessageRequest
    deriving (Show, Eq, Generic)
