{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.UserCommunicationDisabledActionMetadataResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data UserCommunicationDisabledActionMetadataResponse = UserCommunicationDisabledActionMetadataResponse
    { durationSeconds :: Int32
    }
    deriving (Show, Eq, Generic)
