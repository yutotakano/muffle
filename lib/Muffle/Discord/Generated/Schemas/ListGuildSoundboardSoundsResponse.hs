{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ListGuildSoundboardSoundsResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SoundboardSoundResponse

data ListGuildSoundboardSoundsResponse = ListGuildSoundboardSoundsResponse
    { items :: [SoundboardSoundResponse]
    }
    deriving (Show, Eq, Generic)

instance FromJSON ListGuildSoundboardSoundsResponse where
    parseJSON = withObject "ListGuildSoundboardSoundsResponse" $ \o ->
        ListGuildSoundboardSoundsResponse <$>
            o .: "items"