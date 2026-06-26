{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MentionableSelectComponentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.MessageComponentTypes
import Muffle.Discord.Generated.Schemas.RoleSelectDefaultValueResponse
import Muffle.Discord.Generated.Schemas.UserSelectDefaultValueResponse

data MentionableSelectComponentResponse = MentionableSelectComponentResponse
    { customId :: String
    , defaultValues :: Maybe MentionableSelectComponentResponseDefaultValuesNullableInner
    , disabled :: Maybe Bool
    , id :: Int32
    , maxValues :: Int32
    , minValues :: Int32
    , placeholder :: Maybe String
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)
newtype MentionableSelectComponentResponseDefaultValuesNullableInner = MentionableSelectComponentResponseDefaultValuesNullableInner [MentionableSelectComponentResponseDefaultValuesNullableInnerItem]
    deriving (Show, Eq, Generic)
data MentionableSelectComponentResponseDefaultValuesNullableInnerItem = MentionableSelectComponentResponseDefaultValuesNullableInnerItem0 RoleSelectDefaultValueResponse | MentionableSelectComponentResponseDefaultValuesNullableInnerItem1 UserSelectDefaultValueResponse
    deriving (Show, Eq, Generic)
