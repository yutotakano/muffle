{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.SoundboardSoundResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.UserResponse

data SoundboardSoundResponse = SoundboardSoundResponse
    { available :: Bool
    , emojiId :: Maybe SnowflakeType
    , emojiName :: Maybe String
    , guildId :: Maybe SnowflakeType
    , name :: String
    , soundId :: SnowflakeType
    , user :: Maybe UserResponse
    , volume :: Integer
    }
    deriving (Show, Eq, Generic)
