{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MessageCreateRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.MessageAllowedMentionsRequest
import Muffle.Discord.Generated.Schemas.MessageAttachmentRequest
import Muffle.Discord.Generated.Schemas.RichEmbed
import Muffle.Discord.Generated.Schemas.MessageReferenceRequest
import Muffle.Discord.Generated.Schemas.PollCreateRequest
import Muffle.Discord.Generated.Schemas.CustomClientThemeShareRequest
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ActionRowComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.ContainerComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.FileComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.MediaGalleryComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.SectionComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.SeparatorComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.TextDisplayComponentForMessageRequest

data MessageCreateRequest = MessageCreateRequest
    { allowedMentions :: Maybe MessageAllowedMentionsRequest
    , attachments :: [MessageAttachmentRequest]
    , components :: [MessageCreateRequestComponentsItem]
    , content :: Maybe String
    , embeds :: [RichEmbed]
    , enforceNonce :: Maybe Bool
    , flags :: Maybe Integer
    , messageReference :: Maybe MessageReferenceRequest
    , nonce :: Maybe MessageCreateRequestNonceNullableInner
    , poll :: Maybe PollCreateRequest
    , sharedClientTheme :: Maybe CustomClientThemeShareRequest
    , stickerIds :: [SnowflakeType]
    , tts :: Maybe Bool
    }
    deriving (Show, Eq, Generic)
data MessageCreateRequestComponentsItem = MessageCreateRequestComponentsItem0 ActionRowComponentForMessageRequest | MessageCreateRequestComponentsItem1 ContainerComponentForMessageRequest | MessageCreateRequestComponentsItem2 FileComponentForMessageRequest | MessageCreateRequestComponentsItem3 MediaGalleryComponentForMessageRequest | MessageCreateRequestComponentsItem4 SectionComponentForMessageRequest | MessageCreateRequestComponentsItem5 SeparatorComponentForMessageRequest | MessageCreateRequestComponentsItem6 TextDisplayComponentForMessageRequest
    deriving (Show, Eq, Generic)
data MessageCreateRequestNonceNullableInner = MessageCreateRequestNonceNullableInner0 Int64 | MessageCreateRequestNonceNullableInner1 String
    deriving (Show, Eq, Generic)
