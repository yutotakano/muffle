{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.SoundboardCreateRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data SoundboardCreateRequest = SoundboardCreateRequest
    { emojiId :: Maybe (Maybe SnowflakeType)
    , emojiName :: Maybe (Maybe String)
    , name :: String
    , sound :: String
    , volume :: Maybe (Maybe Integer)
    }
    deriving (Show, Eq, Generic)
