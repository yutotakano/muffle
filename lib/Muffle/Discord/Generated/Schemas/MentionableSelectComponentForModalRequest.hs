{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MentionableSelectComponentForModalRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.MessageComponentTypes
import Muffle.Discord.Generated.Schemas.RoleSelectDefaultValue
import Muffle.Discord.Generated.Schemas.UserSelectDefaultValue

data MentionableSelectComponentForModalRequest = MentionableSelectComponentForModalRequest
    { customId :: String
    , defaultValues :: Maybe MentionableSelectComponentForModalRequestDefaultValuesNullableInner
    , disabled :: Maybe (Maybe Bool)
    , id :: Maybe (Maybe Int32)
    , maxValues :: Maybe (Maybe Integer)
    , minValues :: Maybe (Maybe Integer)
    , placeholder :: Maybe (Maybe String)
    , required :: Maybe (Maybe Bool)
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)
newtype MentionableSelectComponentForModalRequestDefaultValuesNullableInner = MentionableSelectComponentForModalRequestDefaultValuesNullableInner [MentionableSelectComponentForModalRequestDefaultValuesNullableInnerItem]
    deriving (Show, Eq, Generic)
data MentionableSelectComponentForModalRequestDefaultValuesNullableInnerItem = MentionableSelectComponentForModalRequestDefaultValuesNullableInnerItem0 RoleSelectDefaultValue | MentionableSelectComponentForModalRequestDefaultValuesNullableInnerItem1 UserSelectDefaultValue
    deriving (Show, Eq, Generic)
