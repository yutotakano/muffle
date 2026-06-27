{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.HasOption where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data HasOption = HasOptionLink | HasOptionEmbed | HasOptionFile | HasOptionImage | HasOptionVideo | HasOptionSound | HasOptionSticker | HasOptionPoll | HasOptionSnapshot | HasOptionALink | HasOptionAEmbed | HasOptionAFile | HasOptionAImage | HasOptionAVideo | HasOptionASound | HasOptionASticker | HasOptionAPoll | HasOptionASnapshot
    deriving (Show, Eq, Generic)

instance FromJSON HasOption where
    parseJSON v = case v of
        "link" -> pure HasOptionLink
        "embed" -> pure HasOptionEmbed
        "file" -> pure HasOptionFile
        "image" -> pure HasOptionImage
        "video" -> pure HasOptionVideo
        "sound" -> pure HasOptionSound
        "sticker" -> pure HasOptionSticker
        "poll" -> pure HasOptionPoll
        "snapshot" -> pure HasOptionSnapshot
        "-link" -> pure HasOptionALink
        "-embed" -> pure HasOptionAEmbed
        "-file" -> pure HasOptionAFile
        "-image" -> pure HasOptionAImage
        "-video" -> pure HasOptionAVideo
        "-sound" -> pure HasOptionASound
        "-sticker" -> pure HasOptionASticker
        "-poll" -> pure HasOptionAPoll
        "-snapshot" -> pure HasOptionASnapshot
        _ -> fail "Expected one of the constants in the oneOf schema"