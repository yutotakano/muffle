{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.BanUserFromGuildRequest where

import Data.Int (Int32, Int64)
import GHC.Generics


data BanUserFromGuildRequest = BanUserFromGuildRequest
    { deleteMessageDays :: Maybe (Maybe Integer)
    , deleteMessageSeconds :: Maybe (Maybe Integer)
    }
    deriving (Show, Eq, Generic)
