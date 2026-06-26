{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.PollEmoji where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data PollEmoji = PollEmoji
    { animated :: Maybe Bool
    , id :: Maybe SnowflakeType
    , name :: Maybe String
    }
    deriving (Show, Eq, Generic)
