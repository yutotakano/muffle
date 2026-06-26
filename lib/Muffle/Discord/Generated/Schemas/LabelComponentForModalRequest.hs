{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.LabelComponentForModalRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.MessageComponentTypes
import Muffle.Discord.Generated.Schemas.ChannelSelectComponentForModalRequest
import Muffle.Discord.Generated.Schemas.CheckboxComponentForModalRequest
import Muffle.Discord.Generated.Schemas.CheckboxGroupComponentForModalRequest
import Muffle.Discord.Generated.Schemas.FileUploadComponentForModalRequest
import Muffle.Discord.Generated.Schemas.MentionableSelectComponentForModalRequest
import Muffle.Discord.Generated.Schemas.RadioGroupComponentForModalRequest
import Muffle.Discord.Generated.Schemas.RoleSelectComponentForModalRequest
import Muffle.Discord.Generated.Schemas.StringSelectComponentForModalRequest
import Muffle.Discord.Generated.Schemas.TextInputComponentForModalRequest
import Muffle.Discord.Generated.Schemas.UserSelectComponentForModalRequest

data LabelComponentForModalRequest = LabelComponentForModalRequest
    { component :: LabelComponentForModalRequestComponent
    , description :: Maybe String
    , id :: Maybe Int32
    , label :: String
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)
data LabelComponentForModalRequestComponent = LabelComponentForModalRequestComponent0 ChannelSelectComponentForModalRequest | LabelComponentForModalRequestComponent1 CheckboxComponentForModalRequest | LabelComponentForModalRequestComponent2 CheckboxGroupComponentForModalRequest | LabelComponentForModalRequestComponent3 FileUploadComponentForModalRequest | LabelComponentForModalRequestComponent4 MentionableSelectComponentForModalRequest | LabelComponentForModalRequestComponent5 RadioGroupComponentForModalRequest | LabelComponentForModalRequestComponent6 RoleSelectComponentForModalRequest | LabelComponentForModalRequestComponent7 StringSelectComponentForModalRequest | LabelComponentForModalRequestComponent8 TextInputComponentForModalRequest | LabelComponentForModalRequestComponent9 UserSelectComponentForModalRequest
    deriving (Show, Eq, Generic)
