{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ActionRowComponentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.MessageComponentTypes
import Muffle.Discord.Generated.Schemas.ButtonComponentResponse
import Muffle.Discord.Generated.Schemas.ChannelSelectComponentResponse
import Muffle.Discord.Generated.Schemas.MentionableSelectComponentResponse
import Muffle.Discord.Generated.Schemas.RoleSelectComponentResponse
import Muffle.Discord.Generated.Schemas.StringSelectComponentResponse
import Muffle.Discord.Generated.Schemas.TextInputComponentResponse
import Muffle.Discord.Generated.Schemas.UserSelectComponentResponse

data ActionRowComponentResponse = ActionRowComponentResponse
    { components :: [ActionRowComponentResponseComponentsItem]
    , id :: Int32
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)
data ActionRowComponentResponseComponentsItem = ActionRowComponentResponseComponentsItem0 ButtonComponentResponse | ActionRowComponentResponseComponentsItem1 ChannelSelectComponentResponse | ActionRowComponentResponseComponentsItem2 MentionableSelectComponentResponse | ActionRowComponentResponseComponentsItem3 RoleSelectComponentResponse | ActionRowComponentResponseComponentsItem4 StringSelectComponentResponse | ActionRowComponentResponseComponentsItem5 TextInputComponentResponse | ActionRowComponentResponseComponentsItem6 UserSelectComponentResponse
    deriving (Show, Eq, Generic)
