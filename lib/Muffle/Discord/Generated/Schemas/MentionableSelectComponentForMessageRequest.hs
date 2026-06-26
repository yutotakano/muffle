{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MentionableSelectComponentForMessageRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.MessageComponentTypes
import Muffle.Discord.Generated.Schemas.RoleSelectDefaultValue
import Muffle.Discord.Generated.Schemas.UserSelectDefaultValue

data MentionableSelectComponentForMessageRequest = MentionableSelectComponentForMessageRequest
    { customId :: String
    , defaultValues :: [MentionableSelectComponentForMessageRequestDefaultValuesItem]
    , disabled :: Maybe Bool
    , id :: Maybe Int32
    , maxValues :: Maybe Integer
    , minValues :: Maybe Integer
    , placeholder :: Maybe String
    , required :: Maybe Bool
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)
data MentionableSelectComponentForMessageRequestDefaultValuesItem = MentionableSelectComponentForMessageRequestDefaultValuesItem0 RoleSelectDefaultValue | MentionableSelectComponentForMessageRequestDefaultValuesItem1 UserSelectDefaultValue
    deriving (Show, Eq, Generic)
