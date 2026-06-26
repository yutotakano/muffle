{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MessageEditRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
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
newtype MessageEditRequestPartialComponentsNullableInner = MessageEditRequestPartialComponentsNullableInner [MessageEditRequestPartialComponentsNullableInnerItem]
    deriving (Show, Eq, Generic)
data MessageEditRequestPartialComponentsNullableInnerItem = MessageEditRequestPartialComponentsNullableInnerItem0 ActionRowComponentForMessageRequest | MessageEditRequestPartialComponentsNullableInnerItem1 ContainerComponentForMessageRequest | MessageEditRequestPartialComponentsNullableInnerItem2 FileComponentForMessageRequest | MessageEditRequestPartialComponentsNullableInnerItem3 MediaGalleryComponentForMessageRequest | MessageEditRequestPartialComponentsNullableInnerItem4 SectionComponentForMessageRequest | MessageEditRequestPartialComponentsNullableInnerItem5 SeparatorComponentForMessageRequest | MessageEditRequestPartialComponentsNullableInnerItem6 TextDisplayComponentForMessageRequest
    deriving (Show, Eq, Generic)
