{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ActionRowComponentForModalRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.TextInputComponentForModalRequest
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data ActionRowComponentForModalRequest = ActionRowComponentForModalRequest
    { components :: [TextInputComponentForModalRequest]
    , id :: Maybe (Maybe Int32)
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)
