{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.UserCommunicationDisabledAction where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.UserCommunicationDisabledActionMetadata
import Muffle.Discord.Generated.Schemas.AutomodActionType

data UserCommunicationDisabledAction = UserCommunicationDisabledAction
    { metadata :: UserCommunicationDisabledActionMetadata
    , type' :: AutomodActionType
    }
    deriving (Show, Eq, Generic)
