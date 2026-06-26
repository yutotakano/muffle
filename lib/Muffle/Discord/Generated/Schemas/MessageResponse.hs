{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MessageResponse where

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

data MessageResponse = MessageResponse
    { activity :: MessageActivityResponse
    , application :: BasicApplicationResponseWithBot
    , applicationId :: SnowflakeType
    , attachments :: [MessageAttachmentResponse]
    , author :: UserResponse
    , call :: MessageCallResponse
    , channelId :: SnowflakeType
    , components :: [MessageResponseComponentsItem]
    , content :: String
    , editedTimestamp :: Maybe String
    , embeds :: [MessageEmbedResponse]
    , flags :: Int32
    , id :: SnowflakeType
    , interaction :: MessageInteractionResponse
    , interactionMetadata :: MessageResponseInteractionMetadata
    , mentionChannels :: [MessageMentionChannelResponse]
    , mentionEveryone :: Bool
    , mentionRoles :: [SnowflakeType]
    , mentions :: [UserResponse]
    , messageReference :: MessageReferenceResponse
    , messageSnapshots :: [MessageSnapshotResponse]
    , nonce :: MessageResponseNonce
    , pinned :: Bool
    , poll :: PollResponse
    , position :: Int32
    , purchaseNotification :: PurchaseNotificationResponse
    , reactions :: [MessageReactionResponse]
    , referencedMessage :: Maybe BasicMessageResponse
    , resolved :: ResolvedObjectsResponse
    , roleSubscriptionData :: MessageRoleSubscriptionDataResponse
    , sharedClientTheme :: CustomClientThemeResponse
    , stickerItems :: [MessageStickerItemResponse]
    , stickers :: [MessageResponseStickersItem]
    , thread :: ThreadResponse
    , timestamp :: String
    , tts :: Bool
    , type' :: MessageType
    , webhookId :: SnowflakeType
    }
    deriving (Show, Eq, Generic)
data MessageResponseComponentsItem = MessageResponseComponentsItem0 ActionRowComponentResponse | MessageResponseComponentsItem1 ContainerComponentResponse | MessageResponseComponentsItem2 FileComponentResponse | MessageResponseComponentsItem3 MediaGalleryComponentResponse | MessageResponseComponentsItem4 SectionComponentResponse | MessageResponseComponentsItem5 SeparatorComponentResponse | MessageResponseComponentsItem6 TextDisplayComponentResponse
    deriving (Show, Eq, Generic)
data MessageResponseInteractionMetadata = MessageResponseInteractionMetadata0 ApplicationCommandInteractionMetadataResponse | MessageResponseInteractionMetadata1 MessageComponentInteractionMetadataResponse | MessageResponseInteractionMetadata2 ModalSubmitInteractionMetadataResponse
    deriving (Show, Eq, Generic)
data MessageResponseNonce = MessageResponseNonce0 Int64 | MessageResponseNonce1 String
    deriving (Show, Eq, Generic)
data MessageResponseStickersItem = MessageResponseStickersItem0 GuildStickerResponse | MessageResponseStickersItem1 StandardStickerResponse
    deriving (Show, Eq, Generic)
