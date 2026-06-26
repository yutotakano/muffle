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
    , defaultValues :: Maybe MentionableSelectComponentForMessageRequestDefaultValuesNullableInner
    , disabled :: Maybe (Maybe Bool)
    , id :: Maybe (Maybe Int32)
    , maxValues :: Maybe (Maybe Integer)
    , minValues :: Maybe (Maybe Integer)
    , placeholder :: Maybe (Maybe String)
    , required :: Maybe (Maybe Bool)
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)
newtype MentionableSelectComponentForMessageRequestDefaultValuesNullableInner = MentionableSelectComponentForMessageRequestDefaultValuesNullableInner [MentionableSelectComponentForMessageRequestDefaultValuesNullableInnerItem]
    deriving (Show, Eq, Generic)
data MentionableSelectComponentForMessageRequestDefaultValuesNullableInnerItem = MentionableSelectComponentForMessageRequestDefaultValuesNullableInnerItem0 RoleSelectDefaultValue | MentionableSelectComponentForMessageRequestDefaultValuesNullableInnerItem1 UserSelectDefaultValue
    deriving (Show, Eq, Generic)
