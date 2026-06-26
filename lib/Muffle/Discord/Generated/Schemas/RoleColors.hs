{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.RoleColors where

import Data.Int (Int32, Int64)
import GHC.Generics


data RoleColors = RoleColors
    { primaryColor :: Maybe Integer
    , secondaryColor :: Maybe Integer
    , tertiaryColor :: Maybe Integer
    }
    deriving (Show, Eq, Generic)
