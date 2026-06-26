{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.PollEmojiCreateRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data PollEmojiCreateRequest = PollEmojiCreateRequest
    { animated :: Maybe (Maybe Bool)
    , id :: Maybe (Maybe SnowflakeType)
    , name :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)
