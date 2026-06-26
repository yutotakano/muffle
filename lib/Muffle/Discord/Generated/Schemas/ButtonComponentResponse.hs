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
    { customId :: String
    , disabled :: Bool
    , emoji :: ComponentEmojiResponse
    , id :: Int32
    , label :: String
    , skuId :: SnowflakeType
    , style :: ButtonStyleTypes
    , type' :: MessageComponentTypes
    , url :: Maybe String
    }
    deriving (Show, Eq, Generic)
