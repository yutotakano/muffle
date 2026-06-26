{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.CreateOrUpdateThreadTagRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data CreateOrUpdateThreadTagRequest = CreateOrUpdateThreadTagRequest
    { emojiId :: Maybe (Maybe SnowflakeType)
    , emojiName :: Maybe (Maybe String)
    , moderated :: Maybe (Maybe Bool)
    , name :: String
    }
    deriving (Show, Eq, Generic)
