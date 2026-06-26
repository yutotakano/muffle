{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ConnectedAccountGuildResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data ConnectedAccountGuildResponse = ConnectedAccountGuildResponse
    { icon :: Maybe String
    , id :: SnowflakeType
    , name :: String
    }
    deriving (Show, Eq, Generic)
