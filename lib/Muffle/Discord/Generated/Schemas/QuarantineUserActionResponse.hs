{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.QuarantineUserActionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.QuarantineUserActionMetadataResponse
import Muffle.Discord.Generated.Schemas.AutomodActionType

data QuarantineUserActionResponse = QuarantineUserActionResponse
    { metadata :: QuarantineUserActionMetadataResponse
    , type' :: AutomodActionType
    }
    deriving (Show, Eq, Generic)
