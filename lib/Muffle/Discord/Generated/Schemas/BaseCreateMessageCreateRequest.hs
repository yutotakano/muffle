{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.BaseCreateMessageCreateRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.MessageAllowedMentionsRequest
import Muffle.Discord.Generated.Schemas.MessageAttachmentRequest
import Muffle.Discord.Generated.Schemas.RichEmbed
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

data BaseCreateMessageCreateRequest = BaseCreateMessageCreateRequest
    { allowedMentions :: Maybe (Maybe MessageAllowedMentionsRequest)
    , attachments :: Maybe [MessageAttachmentRequest]
    , components :: Maybe BaseCreateMessageCreateRequestComponentsNullableInner
    , content :: Maybe (Maybe String)
    , embeds :: Maybe [RichEmbed]
    , flags :: Maybe (Maybe Integer)
    , poll :: Maybe (Maybe PollCreateRequest)
    , sharedClientTheme :: Maybe (Maybe CustomClientThemeShareRequest)
    , stickerIds :: Maybe [SnowflakeType]
    }
    deriving (Show, Eq, Generic)

instance FromJSON BaseCreateMessageCreateRequest where
    parseJSON = withObject "BaseCreateMessageCreateRequest" $ \o ->
        BaseCreateMessageCreateRequest <$>
            o .: "allowed_mentions"
            <*> o .: "attachments"
            <*> o .: "components"
            <*> o .: "content"
            <*> o .: "embeds"
            <*> o .: "flags"
            <*> o .: "poll"
            <*> o .: "shared_client_theme"
            <*> o .: "sticker_ids"

newtype BaseCreateMessageCreateRequestComponentsNullableInner = BaseCreateMessageCreateRequestComponentsNullableInner [BaseCreateMessageCreateRequestComponentsNullableInnerItem]
    deriving (Show, Eq, Generic)

instance FromJSON BaseCreateMessageCreateRequestComponentsNullableInner where
    parseJSON v = BaseCreateMessageCreateRequestComponentsNullableInner <$> parseJSON v

data BaseCreateMessageCreateRequestComponentsNullableInnerItem = BaseCreateMessageCreateRequestComponentsNullableInnerItem0 ActionRowComponentForMessageRequest | BaseCreateMessageCreateRequestComponentsNullableInnerItem1 ContainerComponentForMessageRequest | BaseCreateMessageCreateRequestComponentsNullableInnerItem2 FileComponentForMessageRequest | BaseCreateMessageCreateRequestComponentsNullableInnerItem3 MediaGalleryComponentForMessageRequest | BaseCreateMessageCreateRequestComponentsNullableInnerItem4 SectionComponentForMessageRequest | BaseCreateMessageCreateRequestComponentsNullableInnerItem5 SeparatorComponentForMessageRequest | BaseCreateMessageCreateRequestComponentsNullableInnerItem6 TextDisplayComponentForMessageRequest
    deriving (Show, Eq, Generic)

instance FromJSON BaseCreateMessageCreateRequestComponentsNullableInnerItem where
    parseJSON v =
        BaseCreateMessageCreateRequestComponentsNullableInnerItem0 <$> parseJSON v
            <|> BaseCreateMessageCreateRequestComponentsNullableInnerItem1 <$> parseJSON v
            <|> BaseCreateMessageCreateRequestComponentsNullableInnerItem2 <$> parseJSON v
            <|> BaseCreateMessageCreateRequestComponentsNullableInnerItem3 <$> parseJSON v
            <|> BaseCreateMessageCreateRequestComponentsNullableInnerItem4 <$> parseJSON v
            <|> BaseCreateMessageCreateRequestComponentsNullableInnerItem5 <$> parseJSON v
            <|> BaseCreateMessageCreateRequestComponentsNullableInnerItem6 <$> parseJSON v