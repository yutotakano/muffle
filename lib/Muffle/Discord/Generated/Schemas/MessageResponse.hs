{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MessageResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
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
    { activity :: Maybe MessageActivityResponse
    , application :: Maybe BasicApplicationResponseWithBot
    , applicationId :: Maybe SnowflakeType
    , attachments :: [MessageAttachmentResponse]
    , author :: UserResponse
    , call :: Maybe MessageCallResponse
    , channelId :: SnowflakeType
    , components :: [MessageResponseComponentsItem]
    , content :: String
    , editedTimestamp :: Maybe String
    , embeds :: [MessageEmbedResponse]
    , flags :: Int32
    , id :: SnowflakeType
    , interaction :: Maybe MessageInteractionResponse
    , interactionMetadata :: Maybe MessageResponseInteractionMetadataNullableInner
    , mentionChannels :: Maybe [MessageMentionChannelResponse]
    , mentionEveryone :: Bool
    , mentionRoles :: [SnowflakeType]
    , mentions :: [UserResponse]
    , messageReference :: Maybe MessageReferenceResponse
    , messageSnapshots :: Maybe [MessageSnapshotResponse]
    , nonce :: Maybe MessageResponseNonceNullableInner
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
    , stickers :: Maybe MessageResponseStickersNullableInner
    , thread :: Maybe ThreadResponse
    , timestamp :: String
    , tts :: Bool
    , type' :: MessageType
    , webhookId :: Maybe SnowflakeType
    }
    deriving (Show, Eq, Generic)

instance FromJSON MessageResponse where
    parseJSON = withObject "MessageResponse" $ \o ->
        MessageResponse <$>
            o .: "activity"
            <*> o .: "application"
            <*> o .: "application_id"
            <*> o .: "attachments"
            <*> o .: "author"
            <*> o .: "call"
            <*> o .: "channel_id"
            <*> o .: "components"
            <*> o .: "content"
            <*> o .: "edited_timestamp"
            <*> o .: "embeds"
            <*> o .: "flags"
            <*> o .: "id"
            <*> o .: "interaction"
            <*> o .: "interaction_metadata"
            <*> o .: "mention_channels"
            <*> o .: "mention_everyone"
            <*> o .: "mention_roles"
            <*> o .: "mentions"
            <*> o .: "message_reference"
            <*> o .: "message_snapshots"
            <*> o .: "nonce"
            <*> o .: "pinned"
            <*> o .: "poll"
            <*> o .: "position"
            <*> o .: "purchase_notification"
            <*> o .: "reactions"
            <*> o .: "referenced_message"
            <*> o .: "resolved"
            <*> o .: "role_subscription_data"
            <*> o .: "shared_client_theme"
            <*> o .: "sticker_items"
            <*> o .: "stickers"
            <*> o .: "thread"
            <*> o .: "timestamp"
            <*> o .: "tts"
            <*> o .: "type"
            <*> o .: "webhook_id"

data MessageResponseComponentsItem = MessageResponseComponentsItem0 ActionRowComponentResponse | MessageResponseComponentsItem1 ContainerComponentResponse | MessageResponseComponentsItem2 FileComponentResponse | MessageResponseComponentsItem3 MediaGalleryComponentResponse | MessageResponseComponentsItem4 SectionComponentResponse | MessageResponseComponentsItem5 SeparatorComponentResponse | MessageResponseComponentsItem6 TextDisplayComponentResponse
    deriving (Show, Eq, Generic)

instance FromJSON MessageResponseComponentsItem where
    parseJSON v =
        MessageResponseComponentsItem0 <$> parseJSON v
            <|> MessageResponseComponentsItem1 <$> parseJSON v
            <|> MessageResponseComponentsItem2 <$> parseJSON v
            <|> MessageResponseComponentsItem3 <$> parseJSON v
            <|> MessageResponseComponentsItem4 <$> parseJSON v
            <|> MessageResponseComponentsItem5 <$> parseJSON v
            <|> MessageResponseComponentsItem6 <$> parseJSON v

data MessageResponseInteractionMetadataNullableInner = MessageResponseInteractionMetadataNullableInner0 ApplicationCommandInteractionMetadataResponse | MessageResponseInteractionMetadataNullableInner1 MessageComponentInteractionMetadataResponse | MessageResponseInteractionMetadataNullableInner2 ModalSubmitInteractionMetadataResponse
    deriving (Show, Eq, Generic)

instance FromJSON MessageResponseInteractionMetadataNullableInner where
    parseJSON v =
        MessageResponseInteractionMetadataNullableInner0 <$> parseJSON v
            <|> MessageResponseInteractionMetadataNullableInner1 <$> parseJSON v
            <|> MessageResponseInteractionMetadataNullableInner2 <$> parseJSON v

data MessageResponseNonceNullableInner = MessageResponseNonceNullableInner0 Int64 | MessageResponseNonceNullableInner1 String
    deriving (Show, Eq, Generic)

instance FromJSON MessageResponseNonceNullableInner where
    parseJSON v =
        MessageResponseNonceNullableInner0 <$> parseJSON v
            <|> MessageResponseNonceNullableInner1 <$> parseJSON v

newtype MessageResponseStickersNullableInner = MessageResponseStickersNullableInner [MessageResponseStickersNullableInnerItem]
    deriving (Show, Eq, Generic)

instance FromJSON MessageResponseStickersNullableInner where
    parseJSON v = MessageResponseStickersNullableInner <$> parseJSON v

data MessageResponseStickersNullableInnerItem = MessageResponseStickersNullableInnerItem0 GuildStickerResponse | MessageResponseStickersNullableInnerItem1 StandardStickerResponse
    deriving (Show, Eq, Generic)

instance FromJSON MessageResponseStickersNullableInnerItem where
    parseJSON v =
        MessageResponseStickersNullableInnerItem0 <$> parseJSON v
            <|> MessageResponseStickersNullableInnerItem1 <$> parseJSON v