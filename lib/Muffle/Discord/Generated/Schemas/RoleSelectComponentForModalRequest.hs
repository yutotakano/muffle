{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.RoleSelectComponentForModalRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.RoleSelectDefaultValue
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data RoleSelectComponentForModalRequest = RoleSelectComponentForModalRequest
    { customId :: String
    , defaultValues :: [RoleSelectDefaultValue]
    , disabled :: Maybe Bool
    , id :: Maybe Int32
    , maxValues :: Maybe Integer
    , minValues :: Maybe Integer
    , placeholder :: Maybe String
    , required :: Maybe Bool
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)
