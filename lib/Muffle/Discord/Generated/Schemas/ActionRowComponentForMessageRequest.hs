{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ActionRowComponentForMessageRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.MessageComponentTypes
import Muffle.Discord.Generated.Schemas.ButtonComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.ChannelSelectComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.MentionableSelectComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.RoleSelectComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.StringSelectComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.UserSelectComponentForMessageRequest

data ActionRowComponentForMessageRequest = ActionRowComponentForMessageRequest
    { components :: [ActionRowComponentForMessageRequestComponentsItem]
    , id :: Maybe Int32
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)
data ActionRowComponentForMessageRequestComponentsItem = ActionRowComponentForMessageRequestComponentsItem0 ButtonComponentForMessageRequest | ActionRowComponentForMessageRequestComponentsItem1 ChannelSelectComponentForMessageRequest | ActionRowComponentForMessageRequestComponentsItem2 MentionableSelectComponentForMessageRequest | ActionRowComponentForMessageRequestComponentsItem3 RoleSelectComponentForMessageRequest | ActionRowComponentForMessageRequestComponentsItem4 StringSelectComponentForMessageRequest | ActionRowComponentForMessageRequestComponentsItem5 UserSelectComponentForMessageRequest
    deriving (Show, Eq, Generic)
