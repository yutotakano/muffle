{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.UserCommunicationDisabledActionMetadata where

import Data.Int (Int32, Int64)
import GHC.Generics


data UserCommunicationDisabledActionMetadata = UserCommunicationDisabledActionMetadata
    { durationSeconds :: Maybe Integer
    }
    deriving (Show, Eq, Generic)
