{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ContainerComponentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.MessageComponentTypes
import Muffle.Discord.Generated.Schemas.ActionRowComponentResponse
import Muffle.Discord.Generated.Schemas.FileComponentResponse
import Muffle.Discord.Generated.Schemas.MediaGalleryComponentResponse
import Muffle.Discord.Generated.Schemas.SectionComponentResponse
import Muffle.Discord.Generated.Schemas.SeparatorComponentResponse
import Muffle.Discord.Generated.Schemas.TextDisplayComponentResponse

data ContainerComponentResponse = ContainerComponentResponse
    { accentColor :: Maybe Int32
    , components :: [ContainerComponentResponseComponentsItem]
    , id :: Int32
    , spoiler :: Bool
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)
data ContainerComponentResponseComponentsItem = ContainerComponentResponseComponentsItem0 ActionRowComponentResponse | ContainerComponentResponseComponentsItem1 FileComponentResponse | ContainerComponentResponseComponentsItem2 MediaGalleryComponentResponse | ContainerComponentResponseComponentsItem3 SectionComponentResponse | ContainerComponentResponseComponentsItem4 SeparatorComponentResponse | ContainerComponentResponseComponentsItem5 TextDisplayComponentResponse
    deriving (Show, Eq, Generic)
