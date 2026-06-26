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
    { allowedMentions :: Maybe MessageAllowedMentionsRequest
    , attachments :: [MessageAttachmentRequest]
    , components :: [MessageEditRequestPartialComponentsItem]
    , content :: Maybe String
    , embeds :: [RichEmbed]
    , flags :: Maybe Integer
    , stickerIds :: [SnowflakeType]
    }
    deriving (Show, Eq, Generic)
data MessageEditRequestPartialComponentsItem = MessageEditRequestPartialComponentsItem0 ActionRowComponentForMessageRequest | MessageEditRequestPartialComponentsItem1 ContainerComponentForMessageRequest | MessageEditRequestPartialComponentsItem2 FileComponentForMessageRequest | MessageEditRequestPartialComponentsItem3 MediaGalleryComponentForMessageRequest | MessageEditRequestPartialComponentsItem4 SectionComponentForMessageRequest | MessageEditRequestPartialComponentsItem5 SeparatorComponentForMessageRequest | MessageEditRequestPartialComponentsItem6 TextDisplayComponentForMessageRequest
    deriving (Show, Eq, Generic)
