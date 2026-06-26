{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.SoundboardPatchRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data SoundboardPatchRequestPartial = SoundboardPatchRequestPartial
    { emojiId :: Maybe (Maybe SnowflakeType)
    , emojiName :: Maybe (Maybe String)
    , name :: Maybe String
    , volume :: Maybe (Maybe Integer)
    }
    deriving (Show, Eq, Generic)
