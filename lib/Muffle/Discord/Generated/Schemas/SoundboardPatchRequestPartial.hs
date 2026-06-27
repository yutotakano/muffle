{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.SoundboardPatchRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data SoundboardPatchRequestPartial = SoundboardPatchRequestPartial
    { emojiId :: Maybe (Maybe SnowflakeType)
    , emojiName :: Maybe (Maybe String)
    , name :: Maybe String
    , volume :: Maybe (Maybe Integer)
    }
    deriving (Show, Eq, Generic)

instance FromJSON SoundboardPatchRequestPartial where
    parseJSON = withObject "SoundboardPatchRequestPartial" $ \o ->
        SoundboardPatchRequestPartial <$>
            o .: "emoji_id"
            <*> o .: "emoji_name"
            <*> o .: "name"
            <*> o .: "volume"