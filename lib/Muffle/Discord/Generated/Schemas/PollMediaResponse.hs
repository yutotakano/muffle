{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.PollMediaResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.MessageReactionEmojiResponse

data PollMediaResponse = PollMediaResponse
    { emoji :: Maybe MessageReactionEmojiResponse
    , text :: Maybe String
    }
    deriving (Show, Eq, Generic)
