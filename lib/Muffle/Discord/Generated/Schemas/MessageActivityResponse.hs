{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MessageActivityResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ActivityActionTypes

data MessageActivityResponse = MessageActivityResponse
    { partyId :: Maybe String
    , type' :: ActivityActionTypes
    }
    deriving (Show, Eq, Generic)
