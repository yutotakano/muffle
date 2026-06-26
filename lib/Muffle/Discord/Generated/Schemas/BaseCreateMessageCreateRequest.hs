{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.BaseCreateMessageCreateRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
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
    { allowedMentions :: Maybe MessageAllowedMentionsRequest
    , attachments :: [MessageAttachmentRequest]
    , components :: [BaseCreateMessageCreateRequestComponentsItem]
    , content :: Maybe String
    , embeds :: [RichEmbed]
    , flags :: Maybe Integer
    , poll :: Maybe PollCreateRequest
    , sharedClientTheme :: Maybe CustomClientThemeShareRequest
    , stickerIds :: [SnowflakeType]
    }
    deriving (Show, Eq, Generic)
data BaseCreateMessageCreateRequestComponentsItem = BaseCreateMessageCreateRequestComponentsItem0 ActionRowComponentForMessageRequest | BaseCreateMessageCreateRequestComponentsItem1 ContainerComponentForMessageRequest | BaseCreateMessageCreateRequestComponentsItem2 FileComponentForMessageRequest | BaseCreateMessageCreateRequestComponentsItem3 MediaGalleryComponentForMessageRequest | BaseCreateMessageCreateRequestComponentsItem4 SectionComponentForMessageRequest | BaseCreateMessageCreateRequestComponentsItem5 SeparatorComponentForMessageRequest | BaseCreateMessageCreateRequestComponentsItem6 TextDisplayComponentForMessageRequest
    deriving (Show, Eq, Generic)
