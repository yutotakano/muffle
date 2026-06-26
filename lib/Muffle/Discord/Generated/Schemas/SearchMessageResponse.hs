{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.SearchMessageResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.MessageActivityResponse
import Muffle.Discord.Generated.Schemas.BasicApplicationResponseWithBot
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.MessageAttachmentResponse
import Muffle.Discord.Generated.Schemas.UserResponse
import Muffle.Discord.Generated.Schemas.MessageCallResponse
import Muffle.Discord.Generated.Schemas.MessageEmbedResponse
import Muffle.Discord.Generated.Schemas.MessageInteractionResponse
import Muffle.Discord.Generated.Schemas.MessageMentionChannelResponse
import Muffle.Discord.Generated.Schemas.MessageReferenceResponse
import Muffle.Discord.Generated.Schemas.MessageSnapshotResponse
import Muffle.Discord.Generated.Schemas.PollResponse
import Muffle.Discord.Generated.Schemas.PurchaseNotificationResponse
import Muffle.Discord.Generated.Schemas.MessageReactionResponse
import Muffle.Discord.Generated.Schemas.BasicMessageResponse
import Muffle.Discord.Generated.Schemas.ResolvedObjectsResponse
import Muffle.Discord.Generated.Schemas.MessageRoleSubscriptionDataResponse
import Muffle.Discord.Generated.Schemas.CustomClientThemeResponse
import Muffle.Discord.Generated.Schemas.MessageStickerItemResponse
import Muffle.Discord.Generated.Schemas.ThreadResponse
import Muffle.Discord.Generated.Schemas.MessageType
import Muffle.Discord.Generated.Schemas.ActionRowComponentResponse
import Muffle.Discord.Generated.Schemas.ContainerComponentResponse
import Muffle.Discord.Generated.Schemas.FileComponentResponse
import Muffle.Discord.Generated.Schemas.MediaGalleryComponentResponse
import Muffle.Discord.Generated.Schemas.SectionComponentResponse
import Muffle.Discord.Generated.Schemas.SeparatorComponentResponse
import Muffle.Discord.Generated.Schemas.TextDisplayComponentResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandInteractionMetadataResponse
import Muffle.Discord.Generated.Schemas.MessageComponentInteractionMetadataResponse
import Muffle.Discord.Generated.Schemas.ModalSubmitInteractionMetadataResponse
import Muffle.Discord.Generated.Schemas.GuildStickerResponse
import Muffle.Discord.Generated.Schemas.StandardStickerResponse

data SearchMessageResponse = SearchMessageResponse
    { activity :: Maybe MessageActivityResponse
    , application :: Maybe BasicApplicationResponseWithBot
    , applicationId :: Maybe SnowflakeType
    , attachments :: [MessageAttachmentResponse]
    , author :: UserResponse
    , call :: Maybe MessageCallResponse
    , channelId :: SnowflakeType
    , components :: [SearchMessageResponseComponentsItem]
    , content :: String
    , editedTimestamp :: Maybe String
    , embeds :: [MessageEmbedResponse]
    , flags :: Int32
    , hit :: Bool
    , id :: SnowflakeType
    , interaction :: Maybe MessageInteractionResponse
    , interactionMetadata :: Maybe SearchMessageResponseInteractionMetadataNullableInner
    , mentionChannels :: Maybe [MessageMentionChannelResponse]
    , mentionEveryone :: Bool
    , mentionRoles :: [SnowflakeType]
    , mentions :: [UserResponse]
    , messageReference :: Maybe MessageReferenceResponse
    , messageSnapshots :: Maybe [MessageSnapshotResponse]
    , nonce :: Maybe SearchMessageResponseNonceNullableInner
    , pinned :: Bool
    , poll :: Maybe PollResponse
    , position :: Maybe Int32
    , purchaseNotification :: Maybe PurchaseNotificationResponse
    , reactions :: Maybe [MessageReactionResponse]
    , referencedMessage :: Maybe (Maybe BasicMessageResponse)
    , resolved :: Maybe ResolvedObjectsResponse
    , roleSubscriptionData :: Maybe MessageRoleSubscriptionDataResponse
    , sharedClientTheme :: Maybe CustomClientThemeResponse
    , stickerItems :: Maybe [MessageStickerItemResponse]
    , stickers :: Maybe SearchMessageResponseStickersNullableInner
    , thread :: Maybe ThreadResponse
    , timestamp :: String
    , tts :: Bool
    , type' :: MessageType
    , webhookId :: Maybe SnowflakeType
    }
    deriving (Show, Eq, Generic)
data SearchMessageResponseComponentsItem = SearchMessageResponseComponentsItem0 ActionRowComponentResponse | SearchMessageResponseComponentsItem1 ContainerComponentResponse | SearchMessageResponseComponentsItem2 FileComponentResponse | SearchMessageResponseComponentsItem3 MediaGalleryComponentResponse | SearchMessageResponseComponentsItem4 SectionComponentResponse | SearchMessageResponseComponentsItem5 SeparatorComponentResponse | SearchMessageResponseComponentsItem6 TextDisplayComponentResponse
    deriving (Show, Eq, Generic)
data SearchMessageResponseInteractionMetadataNullableInner = SearchMessageResponseInteractionMetadataNullableInner0 ApplicationCommandInteractionMetadataResponse | SearchMessageResponseInteractionMetadataNullableInner1 MessageComponentInteractionMetadataResponse | SearchMessageResponseInteractionMetadataNullableInner2 ModalSubmitInteractionMetadataResponse
    deriving (Show, Eq, Generic)
data SearchMessageResponseNonceNullableInner = SearchMessageResponseNonceNullableInner0 Int64 | SearchMessageResponseNonceNullableInner1 String
    deriving (Show, Eq, Generic)
newtype SearchMessageResponseStickersNullableInner = SearchMessageResponseStickersNullableInner [SearchMessageResponseStickersNullableInnerItem]
    deriving (Show, Eq, Generic)
data SearchMessageResponseStickersNullableInnerItem = SearchMessageResponseStickersNullableInnerItem0 GuildStickerResponse | SearchMessageResponseStickersNullableInnerItem1 StandardStickerResponse
    deriving (Show, Eq, Generic)
