{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MessageReactionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.MessageReactionCountDetailsResponse
import Muffle.Discord.Generated.Schemas.MessageReactionEmojiResponse

data MessageReactionResponse = MessageReactionResponse
    { burstColors :: [String]
    , count :: Int32
    , countDetails :: MessageReactionCountDetailsResponse
    , emoji :: MessageReactionEmojiResponse
    , me :: Bool
    , meBurst :: Bool
    }
    deriving (Show, Eq, Generic)
