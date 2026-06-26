{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.EmbeddedActivityLocationKind where

import Data.Int (Int32, Int64)
import GHC.Generics


data EmbeddedActivityLocationKind = EmbeddedActivityLocationKindGc | EmbeddedActivityLocationKindPc | EmbeddedActivityLocationKindParty
    deriving (Show, Eq, Generic)
