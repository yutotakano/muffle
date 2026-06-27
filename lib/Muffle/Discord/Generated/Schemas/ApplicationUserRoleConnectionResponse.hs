{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationUserRoleConnectionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data ApplicationUserRoleConnectionResponse = ApplicationUserRoleConnectionResponse
    { metadata :: Maybe ApplicationUserRoleConnectionResponseMetadataNullableInner
    , platformName :: Maybe String
    , platformUsername :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationUserRoleConnectionResponse where
    parseJSON = withObject "ApplicationUserRoleConnectionResponse" $ \o ->
        ApplicationUserRoleConnectionResponse <$>
            o .: "metadata"
            <*> o .: "platform_name"
            <*> o .: "platform_username"

data ApplicationUserRoleConnectionResponseMetadataNullableInner = ApplicationUserRoleConnectionResponseMetadataNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationUserRoleConnectionResponseMetadataNullableInner where
    parseJSON = withObject "ApplicationUserRoleConnectionResponseMetadataNullableInner" $ \_ -> pure ApplicationUserRoleConnectionResponseMetadataNullableInner