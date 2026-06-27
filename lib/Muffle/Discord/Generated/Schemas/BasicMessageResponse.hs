{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.BasicMessageResponse where

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
    { activity :: Maybe MessageActivityResponse
    , application :: Maybe BasicApplicationResponseWithBot
    , applicationId :: Maybe SnowflakeType
    , attachments :: [MessageAttachmentResponse]
    , author :: UserResponse
    , call :: Maybe MessageCallResponse
    , channelId :: SnowflakeType
    , components :: [BasicMessageResponseComponentsItem]
    , content :: String
    , editedTimestamp :: Maybe String
    , embeds :: [MessageEmbedResponse]
    , flags :: Int32
    , id :: SnowflakeType
    , interaction :: Maybe MessageInteractionResponse
    , interactionMetadata :: Maybe BasicMessageResponseInteractionMetadataNullableInner
    , mentionChannels :: Maybe [MessageMentionChannelResponse]
    , mentionEveryone :: Bool
    , mentionRoles :: [SnowflakeType]
    , mentions :: [UserResponse]
    , messageReference :: Maybe MessageReferenceResponse
    , messageSnapshots :: Maybe [MessageSnapshotResponse]
    , nonce :: Maybe BasicMessageResponseNonceNullableInner
    , pinned :: Bool
    , poll :: Maybe PollResponse
    , position :: Maybe Int32
    , purchaseNotification :: Maybe PurchaseNotificationResponse
    , resolved :: Maybe ResolvedObjectsResponse
    , roleSubscriptionData :: Maybe MessageRoleSubscriptionDataResponse
    , sharedClientTheme :: Maybe CustomClientThemeResponse
    , stickerItems :: Maybe [MessageStickerItemResponse]
    , stickers :: Maybe BasicMessageResponseStickersNullableInner
    , thread :: Maybe ThreadResponse
    , timestamp :: String
    , tts :: Bool
    , type' :: MessageType
    , webhookId :: Maybe SnowflakeType
    }
    deriving (Show, Eq, Generic)

instance FromJSON BasicMessageResponse where
    parseJSON = withObject "BasicMessageResponse" $ \o ->
        BasicMessageResponse <$>
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

data BasicMessageResponseComponentsItem = BasicMessageResponseComponentsItem0 ActionRowComponentResponse | BasicMessageResponseComponentsItem1 ContainerComponentResponse | BasicMessageResponseComponentsItem2 FileComponentResponse | BasicMessageResponseComponentsItem3 MediaGalleryComponentResponse | BasicMessageResponseComponentsItem4 SectionComponentResponse | BasicMessageResponseComponentsItem5 SeparatorComponentResponse | BasicMessageResponseComponentsItem6 TextDisplayComponentResponse
    deriving (Show, Eq, Generic)

instance FromJSON BasicMessageResponseComponentsItem where
    parseJSON v =
        BasicMessageResponseComponentsItem0 <$> parseJSON v
            <|> BasicMessageResponseComponentsItem1 <$> parseJSON v
            <|> BasicMessageResponseComponentsItem2 <$> parseJSON v
            <|> BasicMessageResponseComponentsItem3 <$> parseJSON v
            <|> BasicMessageResponseComponentsItem4 <$> parseJSON v
            <|> BasicMessageResponseComponentsItem5 <$> parseJSON v
            <|> BasicMessageResponseComponentsItem6 <$> parseJSON v

data BasicMessageResponseInteractionMetadataNullableInner = BasicMessageResponseInteractionMetadataNullableInner0 ApplicationCommandInteractionMetadataResponse | BasicMessageResponseInteractionMetadataNullableInner1 MessageComponentInteractionMetadataResponse | BasicMessageResponseInteractionMetadataNullableInner2 ModalSubmitInteractionMetadataResponse
    deriving (Show, Eq, Generic)

instance FromJSON BasicMessageResponseInteractionMetadataNullableInner where
    parseJSON v =
        BasicMessageResponseInteractionMetadataNullableInner0 <$> parseJSON v
            <|> BasicMessageResponseInteractionMetadataNullableInner1 <$> parseJSON v
            <|> BasicMessageResponseInteractionMetadataNullableInner2 <$> parseJSON v

data BasicMessageResponseNonceNullableInner = BasicMessageResponseNonceNullableInner0 Int64 | BasicMessageResponseNonceNullableInner1 String
    deriving (Show, Eq, Generic)

instance FromJSON BasicMessageResponseNonceNullableInner where
    parseJSON v =
        BasicMessageResponseNonceNullableInner0 <$> parseJSON v
            <|> BasicMessageResponseNonceNullableInner1 <$> parseJSON v

newtype BasicMessageResponseStickersNullableInner = BasicMessageResponseStickersNullableInner [BasicMessageResponseStickersNullableInnerItem]
    deriving (Show, Eq, Generic)

instance FromJSON BasicMessageResponseStickersNullableInner where
    parseJSON v = BasicMessageResponseStickersNullableInner <$> parseJSON v

data BasicMessageResponseStickersNullableInnerItem = BasicMessageResponseStickersNullableInnerItem0 GuildStickerResponse | BasicMessageResponseStickersNullableInnerItem1 StandardStickerResponse
    deriving (Show, Eq, Generic)

instance FromJSON BasicMessageResponseStickersNullableInnerItem where
    parseJSON v =
        BasicMessageResponseStickersNullableInnerItem0 <$> parseJSON v
            <|> BasicMessageResponseStickersNullableInnerItem1 <$> parseJSON v