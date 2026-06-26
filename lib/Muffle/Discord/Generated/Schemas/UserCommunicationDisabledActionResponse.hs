{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.UserCommunicationDisabledActionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.UserCommunicationDisabledActionMetadataResponse
import Muffle.Discord.Generated.Schemas.AutomodActionType

data UserCommunicationDisabledActionResponse = UserCommunicationDisabledActionResponse
    { metadata :: UserCommunicationDisabledActionMetadataResponse
    , type' :: AutomodActionType
    }
    deriving (Show, Eq, Generic)
