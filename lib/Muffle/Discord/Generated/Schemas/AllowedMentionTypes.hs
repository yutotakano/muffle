{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.AllowedMentionTypes where

import Data.Int (Int32, Int64)
import GHC.Generics


data AllowedMentionTypes = AllowedMentionTypesUsers | AllowedMentionTypesRoles | AllowedMentionTypesEveryone
    deriving (Show, Eq, Generic)
