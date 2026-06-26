{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.RadioGroupOptionForRequest where

import Data.Int (Int32, Int64)
import GHC.Generics


data RadioGroupOptionForRequest = RadioGroupOptionForRequest
    { default' :: Maybe Bool
    , description :: Maybe String
    , label :: String
    , value :: String
    }
    deriving (Show, Eq, Generic)
