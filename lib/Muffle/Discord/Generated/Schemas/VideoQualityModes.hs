{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.VideoQualityModes where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

newtype VideoQualityModes = VideoQualityModes Int32
    deriving (Show, Eq, Generic)

instance FromJSON VideoQualityModes where
    parseJSON v = VideoQualityModes <$> parseJSON v