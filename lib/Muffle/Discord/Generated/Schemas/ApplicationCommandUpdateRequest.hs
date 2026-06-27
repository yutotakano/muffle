{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandUpdateRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.InteractionContextType
import Muffle.Discord.Generated.Schemas.ApplicationCommandHandler
import Muffle.Discord.Generated.Schemas.SnowflakeType
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

data ApplicationCommandUpdateRequest = ApplicationCommandUpdateRequest
    { contexts :: Maybe [InteractionContextType]
    , defaultMemberPermissions :: Maybe (Maybe Integer)
    , description :: Maybe (Maybe String)
    , descriptionLocalizations :: Maybe ApplicationCommandUpdateRequestDescriptionLocalizationsNullableInner
    , dmPermission :: Maybe (Maybe Bool)
    , handler :: Maybe (Maybe ApplicationCommandHandler)
    , id :: Maybe (Maybe SnowflakeType)
    , integrationTypes :: Maybe [ApplicationIntegrationType]
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandUpdateRequestNameLocalizationsNullableInner
    , options :: Maybe ApplicationCommandUpdateRequestOptionsNullableInner
    , type' :: Maybe (Maybe ApplicationCommandType)
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandUpdateRequest where
    parseJSON = withObject "ApplicationCommandUpdateRequest" $ \o ->
        ApplicationCommandUpdateRequest <$>
            o .: "contexts"
            <*> o .: "default_member_permissions"
            <*> o .: "description"
            <*> o .: "description_localizations"
            <*> o .: "dm_permission"
            <*> o .: "handler"
            <*> o .: "id"
            <*> o .: "integration_types"
            <*> o .: "name"
            <*> o .: "name_localizations"
            <*> o .: "options"
            <*> o .: "type"

newtype ApplicationCommandUpdateRequestDescriptionLocalizationsNullableInner = ApplicationCommandUpdateRequestDescriptionLocalizationsNullableInner (Maybe ApplicationCommandUpdateRequestDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandUpdateRequestDescriptionLocalizationsNullableInner where
    parseJSON v = ApplicationCommandUpdateRequestDescriptionLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandUpdateRequestDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandUpdateRequestDescriptionLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandUpdateRequestDescriptionLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandUpdateRequestDescriptionLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandUpdateRequestDescriptionLocalizationsNullableInnerNullableInner

newtype ApplicationCommandUpdateRequestNameLocalizationsNullableInner = ApplicationCommandUpdateRequestNameLocalizationsNullableInner (Maybe ApplicationCommandUpdateRequestNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandUpdateRequestNameLocalizationsNullableInner where
    parseJSON v = ApplicationCommandUpdateRequestNameLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandUpdateRequestNameLocalizationsNullableInnerNullableInner = ApplicationCommandUpdateRequestNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandUpdateRequestNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandUpdateRequestNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandUpdateRequestNameLocalizationsNullableInnerNullableInner

newtype ApplicationCommandUpdateRequestOptionsNullableInner = ApplicationCommandUpdateRequestOptionsNullableInner [ApplicationCommandUpdateRequestOptionsNullableInnerItem]
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandUpdateRequestOptionsNullableInner where
    parseJSON v = ApplicationCommandUpdateRequestOptionsNullableInner <$> parseJSON v

data ApplicationCommandUpdateRequestOptionsNullableInnerItem = ApplicationCommandUpdateRequestOptionsNullableInnerItem0 ApplicationCommandAttachmentOption | ApplicationCommandUpdateRequestOptionsNullableInnerItem1 ApplicationCommandBooleanOption | ApplicationCommandUpdateRequestOptionsNullableInnerItem2 ApplicationCommandChannelOption | ApplicationCommandUpdateRequestOptionsNullableInnerItem3 ApplicationCommandIntegerOption | ApplicationCommandUpdateRequestOptionsNullableInnerItem4 ApplicationCommandMentionableOption | ApplicationCommandUpdateRequestOptionsNullableInnerItem5 ApplicationCommandNumberOption | ApplicationCommandUpdateRequestOptionsNullableInnerItem6 ApplicationCommandRoleOption | ApplicationCommandUpdateRequestOptionsNullableInnerItem7 ApplicationCommandStringOption | ApplicationCommandUpdateRequestOptionsNullableInnerItem8 ApplicationCommandSubcommandGroupOption | ApplicationCommandUpdateRequestOptionsNullableInnerItem9 ApplicationCommandSubcommandOption | ApplicationCommandUpdateRequestOptionsNullableInnerItem10 ApplicationCommandUserOption
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandUpdateRequestOptionsNullableInnerItem where
    parseJSON v =
        ApplicationCommandUpdateRequestOptionsNullableInnerItem0 <$> parseJSON v
            <|> ApplicationCommandUpdateRequestOptionsNullableInnerItem1 <$> parseJSON v
            <|> ApplicationCommandUpdateRequestOptionsNullableInnerItem2 <$> parseJSON v
            <|> ApplicationCommandUpdateRequestOptionsNullableInnerItem3 <$> parseJSON v
            <|> ApplicationCommandUpdateRequestOptionsNullableInnerItem4 <$> parseJSON v
            <|> ApplicationCommandUpdateRequestOptionsNullableInnerItem5 <$> parseJSON v
            <|> ApplicationCommandUpdateRequestOptionsNullableInnerItem6 <$> parseJSON v
            <|> ApplicationCommandUpdateRequestOptionsNullableInnerItem7 <$> parseJSON v
            <|> ApplicationCommandUpdateRequestOptionsNullableInnerItem8 <$> parseJSON v
            <|> ApplicationCommandUpdateRequestOptionsNullableInnerItem9 <$> parseJSON v
            <|> ApplicationCommandUpdateRequestOptionsNullableInnerItem10 <$> parseJSON v