{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.UserAvatarDecorationResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data UserAvatarDecorationResponse = UserAvatarDecorationResponse
    { asset :: String
    , skuId :: Maybe SnowflakeType
    }
    deriving (Show, Eq, Generic)
