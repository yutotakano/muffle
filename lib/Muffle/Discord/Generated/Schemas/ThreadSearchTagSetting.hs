{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ThreadSearchTagSetting where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data ThreadSearchTagSetting = ThreadSearchTagSettingMatchAll | ThreadSearchTagSettingMatchSome
    deriving (Show, Eq, Generic)

instance FromJSON ThreadSearchTagSetting where
    parseJSON v = case v of
        "match_all" -> pure ThreadSearchTagSettingMatchAll
        "match_some" -> pure ThreadSearchTagSettingMatchSome
        _ -> fail "Expected one of the constants in the oneOf schema"