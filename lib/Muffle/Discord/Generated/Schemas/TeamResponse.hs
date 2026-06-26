{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.TeamResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.TeamMemberResponse

data TeamResponse = TeamResponse
    { icon :: Maybe String
    , id :: SnowflakeType
    , members :: [TeamMemberResponse]
    , name :: String
    , ownerUserId :: SnowflakeType
    }
    deriving (Show, Eq, Generic)
