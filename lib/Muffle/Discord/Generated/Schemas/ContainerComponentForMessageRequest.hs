{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ContainerComponentForMessageRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.MessageComponentTypes
import Muffle.Discord.Generated.Schemas.ActionRowComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.FileComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.MediaGalleryComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.SectionComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.SeparatorComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.TextDisplayComponentForMessageRequest

data ContainerComponentForMessageRequest = ContainerComponentForMessageRequest
    { accentColor :: Maybe (Maybe Integer)
    , components :: [ContainerComponentForMessageRequestComponentsItem]
    , id :: Maybe (Maybe Int32)
    , spoiler :: Maybe (Maybe Bool)
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)
data ContainerComponentForMessageRequestComponentsItem = ContainerComponentForMessageRequestComponentsItem0 ActionRowComponentForMessageRequest | ContainerComponentForMessageRequestComponentsItem1 FileComponentForMessageRequest | ContainerComponentForMessageRequestComponentsItem2 MediaGalleryComponentForMessageRequest | ContainerComponentForMessageRequestComponentsItem3 SectionComponentForMessageRequest | ContainerComponentForMessageRequestComponentsItem4 SeparatorComponentForMessageRequest | ContainerComponentForMessageRequestComponentsItem5 TextDisplayComponentForMessageRequest
    deriving (Show, Eq, Generic)
