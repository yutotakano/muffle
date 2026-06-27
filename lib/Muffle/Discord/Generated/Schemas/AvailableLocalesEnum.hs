{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.AvailableLocalesEnum where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data AvailableLocalesEnum = AvailableLocalesEnumAr | AvailableLocalesEnumBg | AvailableLocalesEnumCs | AvailableLocalesEnumDa | AvailableLocalesEnumDe | AvailableLocalesEnumEl | AvailableLocalesEnumEnGB | AvailableLocalesEnumEnUS | AvailableLocalesEnumEs419 | AvailableLocalesEnumEsES | AvailableLocalesEnumFi | AvailableLocalesEnumFr | AvailableLocalesEnumHe | AvailableLocalesEnumHi | AvailableLocalesEnumHr | AvailableLocalesEnumHu | AvailableLocalesEnumId | AvailableLocalesEnumIt | AvailableLocalesEnumJa | AvailableLocalesEnumKo | AvailableLocalesEnumLt | AvailableLocalesEnumNl | AvailableLocalesEnumNo | AvailableLocalesEnumPl | AvailableLocalesEnumPtBR | AvailableLocalesEnumRo | AvailableLocalesEnumRu | AvailableLocalesEnumSvSE | AvailableLocalesEnumTh | AvailableLocalesEnumTr | AvailableLocalesEnumUk | AvailableLocalesEnumVi | AvailableLocalesEnumZhCN | AvailableLocalesEnumZhTW
    deriving (Show, Eq, Generic)

instance FromJSON AvailableLocalesEnum where
    parseJSON v = case v of
        "ar" -> pure AvailableLocalesEnumAr
        "bg" -> pure AvailableLocalesEnumBg
        "cs" -> pure AvailableLocalesEnumCs
        "da" -> pure AvailableLocalesEnumDa
        "de" -> pure AvailableLocalesEnumDe
        "el" -> pure AvailableLocalesEnumEl
        "en-GB" -> pure AvailableLocalesEnumEnGB
        "en-US" -> pure AvailableLocalesEnumEnUS
        "es-419" -> pure AvailableLocalesEnumEs419
        "es-ES" -> pure AvailableLocalesEnumEsES
        "fi" -> pure AvailableLocalesEnumFi
        "fr" -> pure AvailableLocalesEnumFr
        "he" -> pure AvailableLocalesEnumHe
        "hi" -> pure AvailableLocalesEnumHi
        "hr" -> pure AvailableLocalesEnumHr
        "hu" -> pure AvailableLocalesEnumHu
        "id" -> pure AvailableLocalesEnumId
        "it" -> pure AvailableLocalesEnumIt
        "ja" -> pure AvailableLocalesEnumJa
        "ko" -> pure AvailableLocalesEnumKo
        "lt" -> pure AvailableLocalesEnumLt
        "nl" -> pure AvailableLocalesEnumNl
        "no" -> pure AvailableLocalesEnumNo
        "pl" -> pure AvailableLocalesEnumPl
        "pt-BR" -> pure AvailableLocalesEnumPtBR
        "ro" -> pure AvailableLocalesEnumRo
        "ru" -> pure AvailableLocalesEnumRu
        "sv-SE" -> pure AvailableLocalesEnumSvSE
        "th" -> pure AvailableLocalesEnumTh
        "tr" -> pure AvailableLocalesEnumTr
        "uk" -> pure AvailableLocalesEnumUk
        "vi" -> pure AvailableLocalesEnumVi
        "zh-CN" -> pure AvailableLocalesEnumZhCN
        "zh-TW" -> pure AvailableLocalesEnumZhTW
        _ -> fail "Expected one of the constants in the oneOf schema"