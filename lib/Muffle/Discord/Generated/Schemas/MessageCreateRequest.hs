{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MessageCreateRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
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
    { allowedMentions :: Maybe (Maybe MessageAllowedMentionsRequest)
    , attachments :: Maybe [MessageAttachmentRequest]
    , components :: Maybe MessageCreateRequestComponentsNullableInner
    , content :: Maybe (Maybe String)
    , embeds :: Maybe [RichEmbed]
    , enforceNonce :: Maybe (Maybe Bool)
    , flags :: Maybe (Maybe Integer)
    , messageReference :: Maybe (Maybe MessageReferenceRequest)
    , nonce :: Maybe MessageCreateRequestNonceNullableInner
    , poll :: Maybe (Maybe PollCreateRequest)
    , sharedClientTheme :: Maybe (Maybe CustomClientThemeShareRequest)
    , stickerIds :: Maybe [SnowflakeType]
    , tts :: Maybe (Maybe Bool)
    }
    deriving (Show, Eq, Generic)

instance FromJSON MessageCreateRequest where
    parseJSON = withObject "MessageCreateRequest" $ \o ->
        MessageCreateRequest <$>
            o .: "allowed_mentions"
            <*> o .: "attachments"
            <*> o .: "components"
            <*> o .: "content"
            <*> o .: "embeds"
            <*> o .: "enforce_nonce"
            <*> o .: "flags"
            <*> o .: "message_reference"
            <*> o .: "nonce"
            <*> o .: "poll"
            <*> o .: "shared_client_theme"
            <*> o .: "sticker_ids"
            <*> o .: "tts"

newtype MessageCreateRequestComponentsNullableInner = MessageCreateRequestComponentsNullableInner [MessageCreateRequestComponentsNullableInnerItem]
    deriving (Show, Eq, Generic)

instance FromJSON MessageCreateRequestComponentsNullableInner where
    parseJSON v = MessageCreateRequestComponentsNullableInner <$> parseJSON v

data MessageCreateRequestComponentsNullableInnerItem = MessageCreateRequestComponentsNullableInnerItem0 ActionRowComponentForMessageRequest | MessageCreateRequestComponentsNullableInnerItem1 ContainerComponentForMessageRequest | MessageCreateRequestComponentsNullableInnerItem2 FileComponentForMessageRequest | MessageCreateRequestComponentsNullableInnerItem3 MediaGalleryComponentForMessageRequest | MessageCreateRequestComponentsNullableInnerItem4 SectionComponentForMessageRequest | MessageCreateRequestComponentsNullableInnerItem5 SeparatorComponentForMessageRequest | MessageCreateRequestComponentsNullableInnerItem6 TextDisplayComponentForMessageRequest
    deriving (Show, Eq, Generic)

instance FromJSON MessageCreateRequestComponentsNullableInnerItem where
    parseJSON v =
        MessageCreateRequestComponentsNullableInnerItem0 <$> parseJSON v
            <|> MessageCreateRequestComponentsNullableInnerItem1 <$> parseJSON v
            <|> MessageCreateRequestComponentsNullableInnerItem2 <$> parseJSON v
            <|> MessageCreateRequestComponentsNullableInnerItem3 <$> parseJSON v
            <|> MessageCreateRequestComponentsNullableInnerItem4 <$> parseJSON v
            <|> MessageCreateRequestComponentsNullableInnerItem5 <$> parseJSON v
            <|> MessageCreateRequestComponentsNullableInnerItem6 <$> parseJSON v

newtype MessageCreateRequestNonceNullableInner = MessageCreateRequestNonceNullableInner (Maybe MessageCreateRequestNonceNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON MessageCreateRequestNonceNullableInner where
    parseJSON v = MessageCreateRequestNonceNullableInner <$> parseJSON v

data MessageCreateRequestNonceNullableInnerNullableInner = MessageCreateRequestNonceNullableInnerNullableInner0 Int64 | MessageCreateRequestNonceNullableInnerNullableInner1 String
    deriving (Show, Eq, Generic)

instance FromJSON MessageCreateRequestNonceNullableInnerNullableInner where
    parseJSON v =
        MessageCreateRequestNonceNullableInnerNullableInner0 <$> parseJSON v
            <|> MessageCreateRequestNonceNullableInnerNullableInner1 <$> parseJSON v