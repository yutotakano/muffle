{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.IntegrationApplicationResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.UserResponse
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ApplicationTypes

data IntegrationApplicationResponse = IntegrationApplicationResponse
    { bot :: UserResponse
    , coverImage :: String
    , description :: String
    , icon :: Maybe String
    , id :: SnowflakeType
    , name :: String
    , primarySkuId :: SnowflakeType
    , type' :: Maybe ApplicationTypes
    }
    deriving (Show, Eq, Generic)
