{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MinimalContentMessageResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.MessageAttachmentResponse
import Muffle.Discord.Generated.Schemas.MessageEmbedResponse
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.UserResponse
import Muffle.Discord.Generated.Schemas.MessageStickerItemResponse
import Muffle.Discord.Generated.Schemas.MessageType
import Muffle.Discord.Generated.Schemas.ActionRowComponentResponse
import Muffle.Discord.Generated.Schemas.ContainerComponentResponse
import Muffle.Discord.Generated.Schemas.FileComponentResponse
import Muffle.Discord.Generated.Schemas.MediaGalleryComponentResponse
import Muffle.Discord.Generated.Schemas.SectionComponentResponse
import Muffle.Discord.Generated.Schemas.SeparatorComponentResponse
import Muffle.Discord.Generated.Schemas.TextDisplayComponentResponse
import Muffle.Discord.Generated.Schemas.GuildStickerResponse
import Muffle.Discord.Generated.Schemas.StandardStickerResponse

data MinimalContentMessageResponse = MinimalContentMessageResponse
    { attachments :: [MessageAttachmentResponse]
    , components :: [MinimalContentMessageResponseComponentsItem]
    , content :: String
    , editedTimestamp :: Maybe String
    , embeds :: [MessageEmbedResponse]
    , flags :: Int32
    , mentionRoles :: [SnowflakeType]
    , mentions :: [UserResponse]
    , stickerItems :: Maybe [MessageStickerItemResponse]
    , stickers :: Maybe MinimalContentMessageResponseStickersNullableInner
    , timestamp :: String
    , type' :: MessageType
    }
    deriving (Show, Eq, Generic)
data MinimalContentMessageResponseComponentsItem = MinimalContentMessageResponseComponentsItem0 ActionRowComponentResponse | MinimalContentMessageResponseComponentsItem1 ContainerComponentResponse | MinimalContentMessageResponseComponentsItem2 FileComponentResponse | MinimalContentMessageResponseComponentsItem3 MediaGalleryComponentResponse | MinimalContentMessageResponseComponentsItem4 SectionComponentResponse | MinimalContentMessageResponseComponentsItem5 SeparatorComponentResponse | MinimalContentMessageResponseComponentsItem6 TextDisplayComponentResponse
    deriving (Show, Eq, Generic)
newtype MinimalContentMessageResponseStickersNullableInner = MinimalContentMessageResponseStickersNullableInner [MinimalContentMessageResponseStickersNullableInnerItem]
    deriving (Show, Eq, Generic)
data MinimalContentMessageResponseStickersNullableInnerItem = MinimalContentMessageResponseStickersNullableInnerItem0 GuildStickerResponse | MinimalContentMessageResponseStickersNullableInnerItem1 StandardStickerResponse
    deriving (Show, Eq, Generic)
