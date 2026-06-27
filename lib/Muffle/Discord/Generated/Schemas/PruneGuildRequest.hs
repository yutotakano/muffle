{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.PruneGuildRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data PruneGuildRequest = PruneGuildRequest
    { computePruneCount :: Maybe (Maybe Bool)
    , days :: Maybe (Maybe Integer)
    , includeRoles :: Maybe PruneGuildRequestIncludeRolesNullableInner
    }
    deriving (Show, Eq, Generic)

instance FromJSON PruneGuildRequest where
    parseJSON = withObject "PruneGuildRequest" $ \o ->
        PruneGuildRequest <$>
            o .: "compute_prune_count"
            <*> o .: "days"
            <*> o .: "include_roles"

newtype PruneGuildRequestIncludeRolesNullableInner = PruneGuildRequestIncludeRolesNullableInner (Maybe PruneGuildRequestIncludeRolesNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON PruneGuildRequestIncludeRolesNullableInner where
    parseJSON v = PruneGuildRequestIncludeRolesNullableInner <$> parseJSON v

data PruneGuildRequestIncludeRolesNullableInnerNullableInner = PruneGuildRequestIncludeRolesNullableInnerNullableInner0 String | PruneGuildRequestIncludeRolesNullableInnerNullableInner1 [SnowflakeType]
    deriving (Show, Eq, Generic)

instance FromJSON PruneGuildRequestIncludeRolesNullableInnerNullableInner where
    parseJSON v =
        PruneGuildRequestIncludeRolesNullableInnerNullableInner0 <$> parseJSON v
            <|> PruneGuildRequestIncludeRolesNullableInnerNullableInner1 <$> parseJSON v