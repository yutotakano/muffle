{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GroupDMInviteResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.InviteChannelResponse
import Muffle.Discord.Generated.Schemas.UserResponse
import Muffle.Discord.Generated.Schemas.InviteTypes

data GroupDMInviteResponse = GroupDMInviteResponse
    { approximateMemberCount :: Maybe (Maybe Int32)
    , channel :: InviteChannelResponse
    , code :: String
    , createdAt :: Maybe String
    , expiresAt :: Maybe String
    , inviter :: Maybe UserResponse
    , maxAge :: Maybe Int32
    , type' :: InviteTypes
    }
    deriving (Show, Eq, Generic)
