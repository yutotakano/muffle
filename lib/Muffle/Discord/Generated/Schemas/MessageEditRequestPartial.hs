{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MessageEditRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.MessageAllowedMentionsRequest
import Muffle.Discord.Generated.Schemas.MessageAttachmentRequest
import Muffle.Discord.Generated.Schemas.RichEmbed
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ActionRowComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.ContainerComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.FileComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.MediaGalleryComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.SectionComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.SeparatorComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.TextDisplayComponentForMessageRequest

data MessageEditRequestPartial = MessageEditRequestPartial
    { allowedMentions :: Maybe (Maybe MessageAllowedMentionsRequest)
    , attachments :: Maybe [MessageAttachmentRequest]
    , components :: Maybe MessageEditRequestPartialComponentsNullableInner
    , content :: Maybe (Maybe String)
    , embeds :: Maybe [RichEmbed]
    , flags :: Maybe (Maybe Integer)
    , stickerIds :: Maybe [SnowflakeType]
    }
    deriving (Show, Eq, Generic)

instance FromJSON MessageEditRequestPartial where
    parseJSON = withObject "MessageEditRequestPartial" $ \o ->
        MessageEditRequestPartial <$>
            o .: "allowed_mentions"
            <*> o .: "attachments"
            <*> o .: "components"
            <*> o .: "content"
            <*> o .: "embeds"
            <*> o .: "flags"
            <*> o .: "sticker_ids"

newtype MessageEditRequestPartialComponentsNullableInner = MessageEditRequestPartialComponentsNullableInner [MessageEditRequestPartialComponentsNullableInnerItem]
    deriving (Show, Eq, Generic)

instance FromJSON MessageEditRequestPartialComponentsNullableInner where
    parseJSON v = MessageEditRequestPartialComponentsNullableInner <$> parseJSON v

data MessageEditRequestPartialComponentsNullableInnerItem = MessageEditRequestPartialComponentsNullableInnerItem0 ActionRowComponentForMessageRequest | MessageEditRequestPartialComponentsNullableInnerItem1 ContainerComponentForMessageRequest | MessageEditRequestPartialComponentsNullableInnerItem2 FileComponentForMessageRequest | MessageEditRequestPartialComponentsNullableInnerItem3 MediaGalleryComponentForMessageRequest | MessageEditRequestPartialComponentsNullableInnerItem4 SectionComponentForMessageRequest | MessageEditRequestPartialComponentsNullableInnerItem5 SeparatorComponentForMessageRequest | MessageEditRequestPartialComponentsNullableInnerItem6 TextDisplayComponentForMessageRequest
    deriving (Show, Eq, Generic)

instance FromJSON MessageEditRequestPartialComponentsNullableInnerItem where
    parseJSON v =
        MessageEditRequestPartialComponentsNullableInnerItem0 <$> parseJSON v
            <|> MessageEditRequestPartialComponentsNullableInnerItem1 <$> parseJSON v
            <|> MessageEditRequestPartialComponentsNullableInnerItem2 <$> parseJSON v
            <|> MessageEditRequestPartialComponentsNullableInnerItem3 <$> parseJSON v
            <|> MessageEditRequestPartialComponentsNullableInnerItem4 <$> parseJSON v
            <|> MessageEditRequestPartialComponentsNullableInnerItem5 <$> parseJSON v
            <|> MessageEditRequestPartialComponentsNullableInnerItem6 <$> parseJSON v