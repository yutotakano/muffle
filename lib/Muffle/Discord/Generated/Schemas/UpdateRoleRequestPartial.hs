{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UpdateRoleRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.RoleColors

data UpdateRoleRequestPartial = UpdateRoleRequestPartial
    { color :: Maybe (Maybe Integer)
    , colors :: Maybe (Maybe RoleColors)
    , hoist :: Maybe (Maybe Bool)
    , icon :: Maybe (Maybe String)
    , mentionable :: Maybe (Maybe Bool)
    , name :: Maybe (Maybe String)
    , permissions :: Maybe (Maybe Integer)
    , unicodeEmoji :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)

instance FromJSON UpdateRoleRequestPartial where
    parseJSON = withObject "UpdateRoleRequestPartial" $ \o ->
        UpdateRoleRequestPartial <$>
            o .: "color"
            <*> o .: "colors"
            <*> o .: "hoist"
            <*> o .: "icon"
            <*> o .: "mentionable"
            <*> o .: "name"
            <*> o .: "permissions"
            <*> o .: "unicode_emoji"