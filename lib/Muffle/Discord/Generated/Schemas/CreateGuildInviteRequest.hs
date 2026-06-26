{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.CreateGuildInviteRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.InviteTargetTypes

data CreateGuildInviteRequest = CreateGuildInviteRequest
    { maxAge :: Maybe (Maybe Integer)
    , maxUses :: Maybe (Maybe Integer)
    , roleIds :: Maybe CreateGuildInviteRequestRoleIdsNullableInner
    , targetApplicationId :: Maybe (Maybe SnowflakeType)
    , targetType :: Maybe (Maybe InviteTargetTypes)
    , targetUserId :: Maybe (Maybe SnowflakeType)
    , temporary :: Maybe (Maybe Bool)
    , unique :: Maybe (Maybe Bool)
    }
    deriving (Show, Eq, Generic)
newtype CreateGuildInviteRequestRoleIdsNullableInner = CreateGuildInviteRequestRoleIdsNullableInner (Maybe CreateGuildInviteRequestRoleIdsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data CreateGuildInviteRequestRoleIdsNullableInnerNullableInner = CreateGuildInviteRequestRoleIdsNullableInnerNullableInner0 String | CreateGuildInviteRequestRoleIdsNullableInnerNullableInner1 [SnowflakeType]
    deriving (Show, Eq, Generic)
