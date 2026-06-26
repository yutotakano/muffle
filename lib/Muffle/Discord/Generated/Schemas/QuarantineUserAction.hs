{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.QuarantineUserAction where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.QuarantineUserActionMetadata
import Muffle.Discord.Generated.Schemas.AutomodActionType

data QuarantineUserAction = QuarantineUserAction
    { metadata :: Maybe (Maybe QuarantineUserActionMetadata)
    , type' :: AutomodActionType
    }
    deriving (Show, Eq, Generic)
