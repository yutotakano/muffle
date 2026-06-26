{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.SDKMessageRequest where

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

data SDKMessageRequest = SDKMessageRequest
    { allowedMentions :: Maybe MessageAllowedMentionsRequest
    , attachments :: [MessageAttachmentRequest]
    , components :: [SDKMessageRequestComponentsItem]
    , content :: Maybe String
    , embeds :: [RichEmbed]
    , enforceNonce :: Maybe Bool
    , flags :: Maybe Integer
    , messageReference :: Maybe MessageReferenceRequest
    , nonce :: Maybe SDKMessageRequestNonceNullableInner
    , poll :: Maybe PollCreateRequest
    , sharedClientTheme :: Maybe CustomClientThemeShareRequest
    , stickerIds :: [SnowflakeType]
    , tts :: Maybe Bool
    }
    deriving (Show, Eq, Generic)
data SDKMessageRequestComponentsItem = SDKMessageRequestComponentsItem0 ActionRowComponentForMessageRequest | SDKMessageRequestComponentsItem1 ContainerComponentForMessageRequest | SDKMessageRequestComponentsItem2 FileComponentForMessageRequest | SDKMessageRequestComponentsItem3 MediaGalleryComponentForMessageRequest | SDKMessageRequestComponentsItem4 SectionComponentForMessageRequest | SDKMessageRequestComponentsItem5 SeparatorComponentForMessageRequest | SDKMessageRequestComponentsItem6 TextDisplayComponentForMessageRequest
    deriving (Show, Eq, Generic)
data SDKMessageRequestNonceNullableInner = SDKMessageRequestNonceNullableInner0 Int64 | SDKMessageRequestNonceNullableInner1 String
    deriving (Show, Eq, Generic)
