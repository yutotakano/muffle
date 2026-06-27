{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GroupDMInviteResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
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

instance FromJSON GroupDMInviteResponse where
    parseJSON = withObject "GroupDMInviteResponse" $ \o ->
        GroupDMInviteResponse <$>
            o .: "approximate_member_count"
            <*> o .: "channel"
            <*> o .: "code"
            <*> o .: "created_at"
            <*> o .: "expires_at"
            <*> o .: "inviter"
            <*> o .: "max_age"
            <*> o .: "type"