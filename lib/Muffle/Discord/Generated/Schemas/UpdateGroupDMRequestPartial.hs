{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.UpdateGroupDMRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics


data UpdateGroupDMRequestPartial = UpdateGroupDMRequestPartial
    { icon :: Maybe String
    , name :: Maybe String
    }
    deriving (Show, Eq, Generic)
