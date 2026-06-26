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
    { activity :: MessageActivityResponse
    , application :: BasicApplicationResponseWithBot
    , applicationId :: SnowflakeType
    , attachments :: [MessageAttachmentResponse]
    , author :: UserResponse
    , call :: MessageCallResponse
    , channelId :: SnowflakeType
    , components :: [SearchMessageResponseComponentsItem]
    , content :: String
    , editedTimestamp :: Maybe String
    , embeds :: [MessageEmbedResponse]
    , flags :: Int32
    , hit :: Bool
    , id :: SnowflakeType
    , interaction :: MessageInteractionResponse
    , interactionMetadata :: SearchMessageResponseInteractionMetadata
    , mentionChannels :: [MessageMentionChannelResponse]
    , mentionEveryone :: Bool
    , mentionRoles :: [SnowflakeType]
    , mentions :: [UserResponse]
    , messageReference :: MessageReferenceResponse
    , messageSnapshots :: [MessageSnapshotResponse]
    , nonce :: SearchMessageResponseNonce
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
    , stickers :: [SearchMessageResponseStickersItem]
    , thread :: ThreadResponse
    , timestamp :: String
    , tts :: Bool
    , type' :: MessageType
    , webhookId :: SnowflakeType
    }
    deriving (Show, Eq, Generic)
data SearchMessageResponseComponentsItem = SearchMessageResponseComponentsItem0 ActionRowComponentResponse | SearchMessageResponseComponentsItem1 ContainerComponentResponse | SearchMessageResponseComponentsItem2 FileComponentResponse | SearchMessageResponseComponentsItem3 MediaGalleryComponentResponse | SearchMessageResponseComponentsItem4 SectionComponentResponse | SearchMessageResponseComponentsItem5 SeparatorComponentResponse | SearchMessageResponseComponentsItem6 TextDisplayComponentResponse
    deriving (Show, Eq, Generic)
data SearchMessageResponseInteractionMetadata = SearchMessageResponseInteractionMetadata0 ApplicationCommandInteractionMetadataResponse | SearchMessageResponseInteractionMetadata1 MessageComponentInteractionMetadataResponse | SearchMessageResponseInteractionMetadata2 ModalSubmitInteractionMetadataResponse
    deriving (Show, Eq, Generic)
data SearchMessageResponseNonce = SearchMessageResponseNonce0 Int64 | SearchMessageResponseNonce1 String
    deriving (Show, Eq, Generic)
data SearchMessageResponseStickersItem = SearchMessageResponseStickersItem0 GuildStickerResponse | SearchMessageResponseStickersItem1 StandardStickerResponse
    deriving (Show, Eq, Generic)
