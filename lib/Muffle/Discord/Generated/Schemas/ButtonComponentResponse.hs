{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ButtonComponentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ComponentEmojiResponse
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ButtonStyleTypes
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data ButtonComponentResponse = ButtonComponentResponse
    { customId :: Maybe String
    , disabled :: Maybe Bool
    , emoji :: Maybe ComponentEmojiResponse
    , id :: Int32
    , label :: Maybe String
    , skuId :: Maybe SnowflakeType
    , style :: ButtonStyleTypes
    , type' :: MessageComponentTypes
    , url :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)
