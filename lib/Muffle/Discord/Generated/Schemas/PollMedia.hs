{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.PollMedia where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.PollEmoji

data PollMedia = PollMedia
    { emoji :: Maybe (Maybe PollEmoji)
    , text :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)
