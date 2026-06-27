{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.SDKMessageRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
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

instance FromJSON SDKMessageRequest where
    parseJSON = withObject "SDKMessageRequest" $ \o ->
        SDKMessageRequest <$>
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

newtype SDKMessageRequestComponentsNullableInner = SDKMessageRequestComponentsNullableInner [SDKMessageRequestComponentsNullableInnerItem]
    deriving (Show, Eq, Generic)

instance FromJSON SDKMessageRequestComponentsNullableInner where
    parseJSON v = SDKMessageRequestComponentsNullableInner <$> parseJSON v

data SDKMessageRequestComponentsNullableInnerItem = SDKMessageRequestComponentsNullableInnerItem0 ActionRowComponentForMessageRequest | SDKMessageRequestComponentsNullableInnerItem1 ContainerComponentForMessageRequest | SDKMessageRequestComponentsNullableInnerItem2 FileComponentForMessageRequest | SDKMessageRequestComponentsNullableInnerItem3 MediaGalleryComponentForMessageRequest | SDKMessageRequestComponentsNullableInnerItem4 SectionComponentForMessageRequest | SDKMessageRequestComponentsNullableInnerItem5 SeparatorComponentForMessageRequest | SDKMessageRequestComponentsNullableInnerItem6 TextDisplayComponentForMessageRequest
    deriving (Show, Eq, Generic)

instance FromJSON SDKMessageRequestComponentsNullableInnerItem where
    parseJSON v =
        SDKMessageRequestComponentsNullableInnerItem0 <$> parseJSON v
            <|> SDKMessageRequestComponentsNullableInnerItem1 <$> parseJSON v
            <|> SDKMessageRequestComponentsNullableInnerItem2 <$> parseJSON v
            <|> SDKMessageRequestComponentsNullableInnerItem3 <$> parseJSON v
            <|> SDKMessageRequestComponentsNullableInnerItem4 <$> parseJSON v
            <|> SDKMessageRequestComponentsNullableInnerItem5 <$> parseJSON v
            <|> SDKMessageRequestComponentsNullableInnerItem6 <$> parseJSON v

newtype SDKMessageRequestNonceNullableInner = SDKMessageRequestNonceNullableInner (Maybe SDKMessageRequestNonceNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON SDKMessageRequestNonceNullableInner where
    parseJSON v = SDKMessageRequestNonceNullableInner <$> parseJSON v

data SDKMessageRequestNonceNullableInnerNullableInner = SDKMessageRequestNonceNullableInnerNullableInner0 Int64 | SDKMessageRequestNonceNullableInnerNullableInner1 String
    deriving (Show, Eq, Generic)

instance FromJSON SDKMessageRequestNonceNullableInnerNullableInner where
    parseJSON v =
        SDKMessageRequestNonceNullableInnerNullableInner0 <$> parseJSON v
            <|> SDKMessageRequestNonceNullableInnerNullableInner1 <$> parseJSON v