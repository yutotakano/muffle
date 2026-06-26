{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ThreadSearchTagSetting where

import Data.Int (Int32, Int64)
import GHC.Generics


data ThreadSearchTagSetting = ThreadSearchTagSettingMatchAll | ThreadSearchTagSettingMatchSome
    deriving (Show, Eq, Generic)
