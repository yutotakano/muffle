{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.UserNameplateResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.NameplatePalette
import Muffle.Discord.Generated.Schemas.SnowflakeType

data UserNameplateResponse = UserNameplateResponse
    { asset :: String
    , label :: String
    , palette :: NameplatePalette
    , skuId :: Maybe SnowflakeType
    }
    deriving (Show, Eq, Generic)
