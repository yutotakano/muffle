{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ButtonComponentForMessageRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ComponentEmojiForRequest
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ButtonStyleTypes
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data ButtonComponentForMessageRequest = ButtonComponentForMessageRequest
    { customId :: Maybe String
    , disabled :: Maybe Bool
    , emoji :: Maybe ComponentEmojiForRequest
    , id :: Maybe Int32
    , label :: Maybe String
    , skuId :: Maybe SnowflakeType
    , style :: ButtonStyleTypes
    , type' :: MessageComponentTypes
    , url :: Maybe String
    }
    deriving (Show, Eq, Generic)
