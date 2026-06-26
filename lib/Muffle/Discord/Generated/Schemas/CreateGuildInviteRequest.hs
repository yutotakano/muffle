{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.CreateGuildInviteRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.InviteTargetTypes

data CreateGuildInviteRequest = CreateGuildInviteRequest
    { maxAge :: Maybe Integer
    , maxUses :: Maybe Integer
    , roleIds :: Maybe CreateGuildInviteRequestRoleIdsNullableInner
    , targetApplicationId :: Maybe SnowflakeType
    , targetType :: Maybe InviteTargetTypes
    , targetUserId :: Maybe SnowflakeType
    , temporary :: Maybe Bool
    , unique :: Maybe Bool
    }
    deriving (Show, Eq, Generic)
data CreateGuildInviteRequestRoleIdsNullableInner = CreateGuildInviteRequestRoleIdsNullableInner0 String | CreateGuildInviteRequestRoleIdsNullableInner1 [SnowflakeType]
    deriving (Show, Eq, Generic)
