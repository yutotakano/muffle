{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ResolvedObjectsResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data ResolvedObjectsResponse = ResolvedObjectsResponse
    { channels :: Maybe ResolvedObjectsResponseChannelsNullableInner
    , members :: Maybe ResolvedObjectsResponseMembersNullableInner
    , roles :: Maybe ResolvedObjectsResponseRolesNullableInner
    , users :: Maybe ResolvedObjectsResponseUsersNullableInner
    }
    deriving (Show, Eq, Generic)

instance FromJSON ResolvedObjectsResponse where
    parseJSON = withObject "ResolvedObjectsResponse" $ \o ->
        ResolvedObjectsResponse <$>
            o .: "channels"
            <*> o .: "members"
            <*> o .: "roles"
            <*> o .: "users"

newtype ResolvedObjectsResponseChannelsNullableInner = ResolvedObjectsResponseChannelsNullableInner (Maybe ResolvedObjectsResponseChannelsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ResolvedObjectsResponseChannelsNullableInner where
    parseJSON v = ResolvedObjectsResponseChannelsNullableInner <$> parseJSON v

data ResolvedObjectsResponseChannelsNullableInnerNullableInner = ResolvedObjectsResponseChannelsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ResolvedObjectsResponseChannelsNullableInnerNullableInner where
    parseJSON = withObject "ResolvedObjectsResponseChannelsNullableInnerNullableInner" $ \_ -> pure ResolvedObjectsResponseChannelsNullableInnerNullableInner

newtype ResolvedObjectsResponseMembersNullableInner = ResolvedObjectsResponseMembersNullableInner (Maybe ResolvedObjectsResponseMembersNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ResolvedObjectsResponseMembersNullableInner where
    parseJSON v = ResolvedObjectsResponseMembersNullableInner <$> parseJSON v

data ResolvedObjectsResponseMembersNullableInnerNullableInner = ResolvedObjectsResponseMembersNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ResolvedObjectsResponseMembersNullableInnerNullableInner where
    parseJSON = withObject "ResolvedObjectsResponseMembersNullableInnerNullableInner" $ \_ -> pure ResolvedObjectsResponseMembersNullableInnerNullableInner

newtype ResolvedObjectsResponseRolesNullableInner = ResolvedObjectsResponseRolesNullableInner (Maybe ResolvedObjectsResponseRolesNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ResolvedObjectsResponseRolesNullableInner where
    parseJSON v = ResolvedObjectsResponseRolesNullableInner <$> parseJSON v

data ResolvedObjectsResponseRolesNullableInnerNullableInner = ResolvedObjectsResponseRolesNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ResolvedObjectsResponseRolesNullableInnerNullableInner where
    parseJSON = withObject "ResolvedObjectsResponseRolesNullableInnerNullableInner" $ \_ -> pure ResolvedObjectsResponseRolesNullableInnerNullableInner

newtype ResolvedObjectsResponseUsersNullableInner = ResolvedObjectsResponseUsersNullableInner (Maybe ResolvedObjectsResponseUsersNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ResolvedObjectsResponseUsersNullableInner where
    parseJSON v = ResolvedObjectsResponseUsersNullableInner <$> parseJSON v

data ResolvedObjectsResponseUsersNullableInnerNullableInner = ResolvedObjectsResponseUsersNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ResolvedObjectsResponseUsersNullableInnerNullableInner where
    parseJSON = withObject "ResolvedObjectsResponseUsersNullableInnerNullableInner" $ \_ -> pure ResolvedObjectsResponseUsersNullableInnerNullableInner