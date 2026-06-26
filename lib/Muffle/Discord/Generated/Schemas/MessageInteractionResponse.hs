{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MessageInteractionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.InteractionTypes
import Muffle.Discord.Generated.Schemas.UserResponse

data MessageInteractionResponse = MessageInteractionResponse
    { id :: SnowflakeType
    , name :: String
    , nameLocalized :: String
    , type' :: InteractionTypes
    , user :: UserResponse
    }
    deriving (Show, Eq, Generic)
