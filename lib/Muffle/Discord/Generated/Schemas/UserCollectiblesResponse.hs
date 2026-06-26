{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.UserCollectiblesResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.UserNameplateResponse

data UserCollectiblesResponse = UserCollectiblesResponse
    { nameplate :: Maybe UserNameplateResponse
    }
    deriving (Show, Eq, Generic)
