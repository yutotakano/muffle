{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.BasicMessageResponse where

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

data BasicMessageResponse = BasicMessageResponse
    { activity :: MessageActivityResponse
    , application :: BasicApplicationResponseWithBot
    , applicationId :: SnowflakeType
    , attachments :: [MessageAttachmentResponse]
    , author :: UserResponse
    , call :: MessageCallResponse
    , channelId :: SnowflakeType
    , components :: [BasicMessageResponseComponentsItem]
    , content :: String
    , editedTimestamp :: Maybe String
    , embeds :: [MessageEmbedResponse]
    , flags :: Int32
    , id :: SnowflakeType
    , interaction :: MessageInteractionResponse
    , interactionMetadata :: BasicMessageResponseInteractionMetadata
    , mentionChannels :: [MessageMentionChannelResponse]
    , mentionEveryone :: Bool
    , mentionRoles :: [SnowflakeType]
    , mentions :: [UserResponse]
    , messageReference :: MessageReferenceResponse
    , messageSnapshots :: [MessageSnapshotResponse]
    , nonce :: BasicMessageResponseNonce
    , pinned :: Bool
    , poll :: PollResponse
    , position :: Int32
    , purchaseNotification :: PurchaseNotificationResponse
    , resolved :: ResolvedObjectsResponse
    , roleSubscriptionData :: MessageRoleSubscriptionDataResponse
    , sharedClientTheme :: CustomClientThemeResponse
    , stickerItems :: [MessageStickerItemResponse]
    , stickers :: [BasicMessageResponseStickersItem]
    , thread :: ThreadResponse
    , timestamp :: String
    , tts :: Bool
    , type' :: MessageType
    , webhookId :: SnowflakeType
    }
    deriving (Show, Eq, Generic)
data BasicMessageResponseComponentsItem = BasicMessageResponseComponentsItem0 ActionRowComponentResponse | BasicMessageResponseComponentsItem1 ContainerComponentResponse | BasicMessageResponseComponentsItem2 FileComponentResponse | BasicMessageResponseComponentsItem3 MediaGalleryComponentResponse | BasicMessageResponseComponentsItem4 SectionComponentResponse | BasicMessageResponseComponentsItem5 SeparatorComponentResponse | BasicMessageResponseComponentsItem6 TextDisplayComponentResponse
    deriving (Show, Eq, Generic)
data BasicMessageResponseInteractionMetadata = BasicMessageResponseInteractionMetadata0 ApplicationCommandInteractionMetadataResponse | BasicMessageResponseInteractionMetadata1 MessageComponentInteractionMetadataResponse | BasicMessageResponseInteractionMetadata2 ModalSubmitInteractionMetadataResponse
    deriving (Show, Eq, Generic)
data BasicMessageResponseNonce = BasicMessageResponseNonce0 Int64 | BasicMessageResponseNonce1 String
    deriving (Show, Eq, Generic)
data BasicMessageResponseStickersItem = BasicMessageResponseStickersItem0 GuildStickerResponse | BasicMessageResponseStickersItem1 StandardStickerResponse
    deriving (Show, Eq, Generic)
