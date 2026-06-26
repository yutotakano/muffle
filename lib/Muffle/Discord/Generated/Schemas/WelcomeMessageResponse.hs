{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.WelcomeMessageResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data WelcomeMessageResponse = WelcomeMessageResponse
    { authorIds :: [SnowflakeType]
    , message :: String
    }
    deriving (Show, Eq, Generic)
