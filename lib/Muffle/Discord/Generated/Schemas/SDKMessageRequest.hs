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
    { allowedMentions :: Maybe (Maybe MessageAllowedMentionsRequest)
    , attachments :: Maybe [MessageAttachmentRequest]
    , components :: Maybe SDKMessageRequestComponentsNullableInner
    , content :: Maybe (Maybe String)
    , embeds :: Maybe [RichEmbed]
    , enforceNonce :: Maybe (Maybe Bool)
    , flags :: Maybe (Maybe Integer)
    , messageReference :: Maybe (Maybe MessageReferenceRequest)
    , nonce :: Maybe SDKMessageRequestNonceNullableInner
    , poll :: Maybe (Maybe PollCreateRequest)
    , sharedClientTheme :: Maybe (Maybe CustomClientThemeShareRequest)
    , stickerIds :: Maybe [SnowflakeType]
    , tts :: Maybe (Maybe Bool)
    }
    deriving (Show, Eq, Generic)
newtype SDKMessageRequestComponentsNullableInner = SDKMessageRequestComponentsNullableInner [SDKMessageRequestComponentsNullableInnerItem]
    deriving (Show, Eq, Generic)
data SDKMessageRequestComponentsNullableInnerItem = SDKMessageRequestComponentsNullableInnerItem0 ActionRowComponentForMessageRequest | SDKMessageRequestComponentsNullableInnerItem1 ContainerComponentForMessageRequest | SDKMessageRequestComponentsNullableInnerItem2 FileComponentForMessageRequest | SDKMessageRequestComponentsNullableInnerItem3 MediaGalleryComponentForMessageRequest | SDKMessageRequestComponentsNullableInnerItem4 SectionComponentForMessageRequest | SDKMessageRequestComponentsNullableInnerItem5 SeparatorComponentForMessageRequest | SDKMessageRequestComponentsNullableInnerItem6 TextDisplayComponentForMessageRequest
    deriving (Show, Eq, Generic)
newtype SDKMessageRequestNonceNullableInner = SDKMessageRequestNonceNullableInner (Maybe SDKMessageRequestNonceNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data SDKMessageRequestNonceNullableInnerNullableInner = SDKMessageRequestNonceNullableInnerNullableInner0 Int64 | SDKMessageRequestNonceNullableInnerNullableInner1 String
    deriving (Show, Eq, Generic)
