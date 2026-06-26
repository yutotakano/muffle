{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ForumTagResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data ForumTagResponse = ForumTagResponse
    { emojiId :: Maybe SnowflakeType
    , emojiName :: Maybe String
    , id :: SnowflakeType
    , moderated :: Bool
    , name :: String
    }
    deriving (Show, Eq, Generic)
