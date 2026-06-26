{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.CreateGroupDMInviteRequest where

import Data.Int (Int32, Int64)
import GHC.Generics


data CreateGroupDMInviteRequest = CreateGroupDMInviteRequest
    { maxAge :: Maybe Integer
    }
    deriving (Show, Eq, Generic)
