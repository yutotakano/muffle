{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UpdateApplicationUserRoleConnectionRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data UpdateApplicationUserRoleConnectionRequest = UpdateApplicationUserRoleConnectionRequest
    { metadata :: Maybe UpdateApplicationUserRoleConnectionRequestMetadataNullableInner
    , platformName :: Maybe (Maybe String)
    , platformUsername :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)

instance FromJSON UpdateApplicationUserRoleConnectionRequest where
    parseJSON = withObject "UpdateApplicationUserRoleConnectionRequest" $ \o ->
        UpdateApplicationUserRoleConnectionRequest <$>
            o .: "metadata"
            <*> o .: "platform_name"
            <*> o .: "platform_username"

newtype UpdateApplicationUserRoleConnectionRequestMetadataNullableInner = UpdateApplicationUserRoleConnectionRequestMetadataNullableInner (Maybe UpdateApplicationUserRoleConnectionRequestMetadataNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON UpdateApplicationUserRoleConnectionRequestMetadataNullableInner where
    parseJSON v = UpdateApplicationUserRoleConnectionRequestMetadataNullableInner <$> parseJSON v

data UpdateApplicationUserRoleConnectionRequestMetadataNullableInnerNullableInner = UpdateApplicationUserRoleConnectionRequestMetadataNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON UpdateApplicationUserRoleConnectionRequestMetadataNullableInnerNullableInner where
    parseJSON = withObject "UpdateApplicationUserRoleConnectionRequestMetadataNullableInnerNullableInner" $ \_ -> pure UpdateApplicationUserRoleConnectionRequestMetadataNullableInnerNullableInner