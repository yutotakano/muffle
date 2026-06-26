{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.UpdateThreadTagRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data UpdateThreadTagRequest = UpdateThreadTagRequest
    { emojiId :: Maybe SnowflakeType
    , emojiName :: Maybe String
    , id :: Maybe SnowflakeType
    , moderated :: Maybe Bool
    , name :: String
    }
    deriving (Show, Eq, Generic)
