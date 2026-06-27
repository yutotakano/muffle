{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandPatchRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.InteractionContextType
import Muffle.Discord.Generated.Schemas.ApplicationCommandHandler
import Muffle.Discord.Generated.Schemas.ApplicationIntegrationType
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

data ApplicationCommandPatchRequestPartial = ApplicationCommandPatchRequestPartial
    { contexts :: Maybe [InteractionContextType]
    , defaultMemberPermissions :: Maybe (Maybe Integer)
    , description :: Maybe (Maybe String)
    , descriptionLocalizations :: Maybe ApplicationCommandPatchRequestPartialDescriptionLocalizationsNullableInner
    , dmPermission :: Maybe (Maybe Bool)
    , handler :: Maybe (Maybe ApplicationCommandHandler)
    , integrationTypes :: Maybe [ApplicationIntegrationType]
    , name :: Maybe String
    , nameLocalizations :: Maybe ApplicationCommandPatchRequestPartialNameLocalizationsNullableInner
    , options :: Maybe ApplicationCommandPatchRequestPartialOptionsNullableInner
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandPatchRequestPartial where
    parseJSON = withObject "ApplicationCommandPatchRequestPartial" $ \o ->
        ApplicationCommandPatchRequestPartial <$>
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

newtype ApplicationCommandPatchRequestPartialDescriptionLocalizationsNullableInner = ApplicationCommandPatchRequestPartialDescriptionLocalizationsNullableInner (Maybe ApplicationCommandPatchRequestPartialDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandPatchRequestPartialDescriptionLocalizationsNullableInner where
    parseJSON v = ApplicationCommandPatchRequestPartialDescriptionLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandPatchRequestPartialDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandPatchRequestPartialDescriptionLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandPatchRequestPartialDescriptionLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandPatchRequestPartialDescriptionLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandPatchRequestPartialDescriptionLocalizationsNullableInnerNullableInner

newtype ApplicationCommandPatchRequestPartialNameLocalizationsNullableInner = ApplicationCommandPatchRequestPartialNameLocalizationsNullableInner (Maybe ApplicationCommandPatchRequestPartialNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandPatchRequestPartialNameLocalizationsNullableInner where
    parseJSON v = ApplicationCommandPatchRequestPartialNameLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandPatchRequestPartialNameLocalizationsNullableInnerNullableInner = ApplicationCommandPatchRequestPartialNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandPatchRequestPartialNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandPatchRequestPartialNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandPatchRequestPartialNameLocalizationsNullableInnerNullableInner

newtype ApplicationCommandPatchRequestPartialOptionsNullableInner = ApplicationCommandPatchRequestPartialOptionsNullableInner [ApplicationCommandPatchRequestPartialOptionsNullableInnerItem]
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandPatchRequestPartialOptionsNullableInner where
    parseJSON v = ApplicationCommandPatchRequestPartialOptionsNullableInner <$> parseJSON v

data ApplicationCommandPatchRequestPartialOptionsNullableInnerItem = ApplicationCommandPatchRequestPartialOptionsNullableInnerItem0 ApplicationCommandAttachmentOption | ApplicationCommandPatchRequestPartialOptionsNullableInnerItem1 ApplicationCommandBooleanOption | ApplicationCommandPatchRequestPartialOptionsNullableInnerItem2 ApplicationCommandChannelOption | ApplicationCommandPatchRequestPartialOptionsNullableInnerItem3 ApplicationCommandIntegerOption | ApplicationCommandPatchRequestPartialOptionsNullableInnerItem4 ApplicationCommandMentionableOption | ApplicationCommandPatchRequestPartialOptionsNullableInnerItem5 ApplicationCommandNumberOption | ApplicationCommandPatchRequestPartialOptionsNullableInnerItem6 ApplicationCommandRoleOption | ApplicationCommandPatchRequestPartialOptionsNullableInnerItem7 ApplicationCommandStringOption | ApplicationCommandPatchRequestPartialOptionsNullableInnerItem8 ApplicationCommandSubcommandGroupOption | ApplicationCommandPatchRequestPartialOptionsNullableInnerItem9 ApplicationCommandSubcommandOption | ApplicationCommandPatchRequestPartialOptionsNullableInnerItem10 ApplicationCommandUserOption
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandPatchRequestPartialOptionsNullableInnerItem where
    parseJSON v =
        ApplicationCommandPatchRequestPartialOptionsNullableInnerItem0 <$> parseJSON v
            <|> ApplicationCommandPatchRequestPartialOptionsNullableInnerItem1 <$> parseJSON v
            <|> ApplicationCommandPatchRequestPartialOptionsNullableInnerItem2 <$> parseJSON v
            <|> ApplicationCommandPatchRequestPartialOptionsNullableInnerItem3 <$> parseJSON v
            <|> ApplicationCommandPatchRequestPartialOptionsNullableInnerItem4 <$> parseJSON v
            <|> ApplicationCommandPatchRequestPartialOptionsNullableInnerItem5 <$> parseJSON v
            <|> ApplicationCommandPatchRequestPartialOptionsNullableInnerItem6 <$> parseJSON v
            <|> ApplicationCommandPatchRequestPartialOptionsNullableInnerItem7 <$> parseJSON v
            <|> ApplicationCommandPatchRequestPartialOptionsNullableInnerItem8 <$> parseJSON v
            <|> ApplicationCommandPatchRequestPartialOptionsNullableInnerItem9 <$> parseJSON v
            <|> ApplicationCommandPatchRequestPartialOptionsNullableInnerItem10 <$> parseJSON v