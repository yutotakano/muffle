{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.StickerFormatTypes where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

newtype StickerFormatTypes = StickerFormatTypes Int32
    deriving (Show, Eq, Generic)

instance FromJSON StickerFormatTypes where
    parseJSON v = StickerFormatTypes <$> parseJSON v