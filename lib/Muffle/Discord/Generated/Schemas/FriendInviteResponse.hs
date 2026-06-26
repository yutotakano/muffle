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
    , createdAt :: String
    , expiresAt :: Maybe String
    , flags :: Int32
    , friendsCount :: Int32
    , inviter :: UserResponse
    , isContact :: Bool
    , maxAge :: Int32
    , maxUses :: Int32
    , type' :: InviteTypes
    , uses :: Int32
    }
    deriving (Show, Eq, Generic)
