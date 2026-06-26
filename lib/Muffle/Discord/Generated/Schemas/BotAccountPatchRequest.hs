{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.BotAccountPatchRequest where

import Data.Int (Int32, Int64)
import GHC.Generics


data BotAccountPatchRequest = BotAccountPatchRequest
    { avatar :: Maybe (Maybe String)
    , banner :: Maybe (Maybe String)
    , username :: String
    }
    deriving (Show, Eq, Generic)
