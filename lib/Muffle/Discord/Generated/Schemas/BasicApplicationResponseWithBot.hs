{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.BasicApplicationResponseWithBot where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.UserResponse
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ApplicationTypes

data BasicApplicationResponseWithBot = BasicApplicationResponseWithBot
    { bot :: Maybe UserResponse
    , coverImage :: Maybe String
    , description :: String
    , icon :: Maybe String
    , id :: SnowflakeType
    , name :: String
    , primarySkuId :: Maybe SnowflakeType
    , type' :: Maybe ApplicationTypes
    }
    deriving (Show, Eq, Generic)
