{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.FriendInviteResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.InviteChannelResponse
import Muffle.Discord.Generated.Schemas.UserResponse
import Muffle.Discord.Generated.Schemas.InviteTypes

data FriendInviteResponse = FriendInviteResponse
    { channel :: Maybe InviteChannelResponse
    , code :: String
    , createdAt :: Maybe String
    , expiresAt :: Maybe String
    , flags :: Maybe Int32
    , friendsCount :: Maybe Int32
    , inviter :: Maybe UserResponse
    , isContact :: Maybe Bool
    , maxAge :: Maybe Int32
    , maxUses :: Maybe Int32
    , type' :: InviteTypes
    , uses :: Maybe Int32
    }
    deriving (Show, Eq, Generic)
