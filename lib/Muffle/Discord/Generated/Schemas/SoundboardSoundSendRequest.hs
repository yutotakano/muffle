{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.SoundboardSoundSendRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data SoundboardSoundSendRequest = SoundboardSoundSendRequest
    { soundId :: SnowflakeType
    , sourceGuildId :: Maybe (Maybe SnowflakeType)
    }
    deriving (Show, Eq, Generic)

instance FromJSON SoundboardSoundSendRequest where
    parseJSON = withObject "SoundboardSoundSendRequest" $ \o ->
        SoundboardSoundSendRequest <$>
            o .: "sound_id"
            <*> o .: "source_guild_id"