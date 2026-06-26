{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MessageReactionEmojiResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data MessageReactionEmojiResponse = MessageReactionEmojiResponse
    { animated :: Maybe Bool
    , id :: Maybe SnowflakeType
    , name :: Maybe String
    }
    deriving (Show, Eq, Generic)
