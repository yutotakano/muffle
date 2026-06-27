{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandCreateRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.InteractionContextType
import Muffle.Discord.Generated.Schemas.ApplicationCommandHandler
import Muffle.Discord.Generated.Schemas.ApplicationIntegrationType
import Muffle.Discord.Generated.Schemas.ApplicationCommandType
import Muffle.Discord.Generated.Schemas.ApplicationCommandAttachmentOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandBooleanOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandChannelOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandIntegerOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandMentionableOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandNumberOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandRoleOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandStringOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandSubcommandGroupOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandSubcommandOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandUserOption

data ApplicationCommandCreateRequest = ApplicationCommandCreateRequest
    { contexts :: Maybe [InteractionContextType]
    , defaultMemberPermissions :: Maybe (Maybe Integer)
    , description :: Maybe (Maybe String)
    , descriptionLocalizations :: Maybe ApplicationCommandCreateRequestDescriptionLocalizationsNullableInner
    , dmPermission :: Maybe (Maybe Bool)
    , handler :: Maybe (Maybe ApplicationCommandHandler)
    , integrationTypes :: Maybe [ApplicationIntegrationType]
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandCreateRequestNameLocalizationsNullableInner
    , options :: Maybe ApplicationCommandCreateRequestOptionsNullableInner
    , type' :: Maybe (Maybe ApplicationCommandType)
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandCreateRequest where
    parseJSON = withObject "ApplicationCommandCreateRequest" $ \o ->
        ApplicationCommandCreateRequest <$>
            o .: "contexts"
            <*> o .: "default_member_permissions"
            <*> o .: "description"
            <*> o .: "description_localizations"
            <*> o .: "dm_permission"
            <*> o .: "handler"
            <*> o .: "integration_types"
            <*> o .: "name"
            <*> o .: "name_localizations"
            <*> o .: "options"
            <*> o .: "type"

newtype ApplicationCommandCreateRequestDescriptionLocalizationsNullableInner = ApplicationCommandCreateRequestDescriptionLocalizationsNullableInner (Maybe ApplicationCommandCreateRequestDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandCreateRequestDescriptionLocalizationsNullableInner where
    parseJSON v = ApplicationCommandCreateRequestDescriptionLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandCreateRequestDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandCreateRequestDescriptionLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandCreateRequestDescriptionLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandCreateRequestDescriptionLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandCreateRequestDescriptionLocalizationsNullableInnerNullableInner

newtype ApplicationCommandCreateRequestNameLocalizationsNullableInner = ApplicationCommandCreateRequestNameLocalizationsNullableInner (Maybe ApplicationCommandCreateRequestNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandCreateRequestNameLocalizationsNullableInner where
    parseJSON v = ApplicationCommandCreateRequestNameLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandCreateRequestNameLocalizationsNullableInnerNullableInner = ApplicationCommandCreateRequestNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandCreateRequestNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandCreateRequestNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandCreateRequestNameLocalizationsNullableInnerNullableInner

newtype ApplicationCommandCreateRequestOptionsNullableInner = ApplicationCommandCreateRequestOptionsNullableInner [ApplicationCommandCreateRequestOptionsNullableInnerItem]
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandCreateRequestOptionsNullableInner where
    parseJSON v = ApplicationCommandCreateRequestOptionsNullableInner <$> parseJSON v

data ApplicationCommandCreateRequestOptionsNullableInnerItem = ApplicationCommandCreateRequestOptionsNullableInnerItem0 ApplicationCommandAttachmentOption | ApplicationCommandCreateRequestOptionsNullableInnerItem1 ApplicationCommandBooleanOption | ApplicationCommandCreateRequestOptionsNullableInnerItem2 ApplicationCommandChannelOption | ApplicationCommandCreateRequestOptionsNullableInnerItem3 ApplicationCommandIntegerOption | ApplicationCommandCreateRequestOptionsNullableInnerItem4 ApplicationCommandMentionableOption | ApplicationCommandCreateRequestOptionsNullableInnerItem5 ApplicationCommandNumberOption | ApplicationCommandCreateRequestOptionsNullableInnerItem6 ApplicationCommandRoleOption | ApplicationCommandCreateRequestOptionsNullableInnerItem7 ApplicationCommandStringOption | ApplicationCommandCreateRequestOptionsNullableInnerItem8 ApplicationCommandSubcommandGroupOption | ApplicationCommandCreateRequestOptionsNullableInnerItem9 ApplicationCommandSubcommandOption | ApplicationCommandCreateRequestOptionsNullableInnerItem10 ApplicationCommandUserOption
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandCreateRequestOptionsNullableInnerItem where
    parseJSON v =
        ApplicationCommandCreateRequestOptionsNullableInnerItem0 <$> parseJSON v
            <|> ApplicationCommandCreateRequestOptionsNullableInnerItem1 <$> parseJSON v
            <|> ApplicationCommandCreateRequestOptionsNullableInnerItem2 <$> parseJSON v
            <|> ApplicationCommandCreateRequestOptionsNullableInnerItem3 <$> parseJSON v
            <|> ApplicationCommandCreateRequestOptionsNullableInnerItem4 <$> parseJSON v
            <|> ApplicationCommandCreateRequestOptionsNullableInnerItem5 <$> parseJSON v
            <|> ApplicationCommandCreateRequestOptionsNullableInnerItem6 <$> parseJSON v
            <|> ApplicationCommandCreateRequestOptionsNullableInnerItem7 <$> parseJSON v
            <|> ApplicationCommandCreateRequestOptionsNullableInnerItem8 <$> parseJSON v
            <|> ApplicationCommandCreateRequestOptionsNullableInnerItem9 <$> parseJSON v
            <|> ApplicationCommandCreateRequestOptionsNullableInnerItem10 <$> parseJSON v