{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.CreateGuildInviteRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
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

instance FromJSON CreateGuildInviteRequest where
    parseJSON = withObject "CreateGuildInviteRequest" $ \o ->
        CreateGuildInviteRequest <$>
            o .: "max_age"
            <*> o .: "max_uses"
            <*> o .: "role_ids"
            <*> o .: "target_application_id"
            <*> o .: "target_type"
            <*> o .: "target_user_id"
            <*> o .: "temporary"
            <*> o .: "unique"

newtype CreateGuildInviteRequestRoleIdsNullableInner = CreateGuildInviteRequestRoleIdsNullableInner (Maybe CreateGuildInviteRequestRoleIdsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON CreateGuildInviteRequestRoleIdsNullableInner where
    parseJSON v = CreateGuildInviteRequestRoleIdsNullableInner <$> parseJSON v

data CreateGuildInviteRequestRoleIdsNullableInnerNullableInner = CreateGuildInviteRequestRoleIdsNullableInnerNullableInner0 String | CreateGuildInviteRequestRoleIdsNullableInnerNullableInner1 [SnowflakeType]
    deriving (Show, Eq, Generic)

instance FromJSON CreateGuildInviteRequestRoleIdsNullableInnerNullableInner where
    parseJSON v =
        CreateGuildInviteRequestRoleIdsNullableInnerNullableInner0 <$> parseJSON v
            <|> CreateGuildInviteRequestRoleIdsNullableInnerNullableInner1 <$> parseJSON v