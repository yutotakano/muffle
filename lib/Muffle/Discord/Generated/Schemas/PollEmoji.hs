{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.PollEmoji where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data PollEmoji = PollEmoji
    { animated :: Maybe (Maybe Bool)
    , id :: Maybe (Maybe SnowflakeType)
    , name :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)
