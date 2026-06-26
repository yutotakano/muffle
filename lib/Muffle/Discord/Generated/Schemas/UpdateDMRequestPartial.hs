{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.UpdateDMRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics


data UpdateDMRequestPartial = UpdateDMRequestPartial
    { name :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)
