{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ListApplicationEmojisResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.EmojiResponse

data ListApplicationEmojisResponse = ListApplicationEmojisResponse
    { items :: [EmojiResponse]
    }
    deriving (Show, Eq, Generic)
