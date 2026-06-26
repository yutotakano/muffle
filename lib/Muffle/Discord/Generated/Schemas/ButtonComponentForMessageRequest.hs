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
    { customId :: Maybe (Maybe String)
    , disabled :: Maybe (Maybe Bool)
    , emoji :: Maybe (Maybe ComponentEmojiForRequest)
    , id :: Maybe (Maybe Int32)
    , label :: Maybe (Maybe String)
    , skuId :: Maybe (Maybe SnowflakeType)
    , style :: ButtonStyleTypes
    , type' :: MessageComponentTypes
    , url :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)
