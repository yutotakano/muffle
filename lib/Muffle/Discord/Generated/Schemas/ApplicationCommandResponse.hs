{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.InteractionContextType
import Muffle.Discord.Generated.Schemas.ApplicationCommandHandler
import Muffle.Discord.Generated.Schemas.ApplicationIntegrationType
import Muffle.Discord.Generated.Schemas.ApplicationCommandType
import Muffle.Discord.Generated.Schemas.ApplicationCommandAttachmentOptionResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandBooleanOptionResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandChannelOptionResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandIntegerOptionResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandMentionableOptionResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandNumberOptionResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandRoleOptionResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandStringOptionResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandSubcommandGroupOptionResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandSubcommandOptionResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandUserOptionResponse

data ApplicationCommandResponse = ApplicationCommandResponse
    { applicationId :: SnowflakeType
    , contexts :: Maybe [InteractionContextType]
    , defaultMemberPermissions :: Maybe String
    , description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: Maybe String
    , dmPermission :: Maybe Bool
    , guildId :: Maybe SnowflakeType
    , handler :: Maybe ApplicationCommandHandler
    , id :: SnowflakeType
    , integrationTypes :: Maybe [ApplicationIntegrationType]
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandResponseNameLocalizationsNullableInner
    , nameLocalized :: Maybe String
    , nsfw :: Maybe Bool
    , options :: Maybe ApplicationCommandResponseOptionsNullableInner
    , type' :: ApplicationCommandType
    , version :: SnowflakeType
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandResponse where
    parseJSON = withObject "ApplicationCommandResponse" $ \o ->
        ApplicationCommandResponse <$>
            o .: "application_id"
            <*> o .: "contexts"
            <*> o .: "default_member_permissions"
            <*> o .: "description"
            <*> o .: "description_localizations"
            <*> o .: "description_localized"
            <*> o .: "dm_permission"
            <*> o .: "guild_id"
            <*> o .: "handler"
            <*> o .: "id"
            <*> o .: "integration_types"
            <*> o .: "name"
            <*> o .: "name_localizations"
            <*> o .: "name_localized"
            <*> o .: "nsfw"
            <*> o .: "options"
            <*> o .: "type"
            <*> o .: "version"

newtype ApplicationCommandResponseDescriptionLocalizationsNullableInner = ApplicationCommandResponseDescriptionLocalizationsNullableInner (Maybe ApplicationCommandResponseDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandResponseDescriptionLocalizationsNullableInner where
    parseJSON v = ApplicationCommandResponseDescriptionLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandResponseDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandResponseDescriptionLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandResponseDescriptionLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandResponseDescriptionLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandResponseDescriptionLocalizationsNullableInnerNullableInner

newtype ApplicationCommandResponseNameLocalizationsNullableInner = ApplicationCommandResponseNameLocalizationsNullableInner (Maybe ApplicationCommandResponseNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandResponseNameLocalizationsNullableInner where
    parseJSON v = ApplicationCommandResponseNameLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandResponseNameLocalizationsNullableInnerNullableInner = ApplicationCommandResponseNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandResponseNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandResponseNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandResponseNameLocalizationsNullableInnerNullableInner

newtype ApplicationCommandResponseOptionsNullableInner = ApplicationCommandResponseOptionsNullableInner [ApplicationCommandResponseOptionsNullableInnerItem]
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandResponseOptionsNullableInner where
    parseJSON v = ApplicationCommandResponseOptionsNullableInner <$> parseJSON v

data ApplicationCommandResponseOptionsNullableInnerItem = ApplicationCommandResponseOptionsNullableInnerItem0 ApplicationCommandAttachmentOptionResponse | ApplicationCommandResponseOptionsNullableInnerItem1 ApplicationCommandBooleanOptionResponse | ApplicationCommandResponseOptionsNullableInnerItem2 ApplicationCommandChannelOptionResponse | ApplicationCommandResponseOptionsNullableInnerItem3 ApplicationCommandIntegerOptionResponse | ApplicationCommandResponseOptionsNullableInnerItem4 ApplicationCommandMentionableOptionResponse | ApplicationCommandResponseOptionsNullableInnerItem5 ApplicationCommandNumberOptionResponse | ApplicationCommandResponseOptionsNullableInnerItem6 ApplicationCommandRoleOptionResponse | ApplicationCommandResponseOptionsNullableInnerItem7 ApplicationCommandStringOptionResponse | ApplicationCommandResponseOptionsNullableInnerItem8 ApplicationCommandSubcommandGroupOptionResponse | ApplicationCommandResponseOptionsNullableInnerItem9 ApplicationCommandSubcommandOptionResponse | ApplicationCommandResponseOptionsNullableInnerItem10 ApplicationCommandUserOptionResponse
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandResponseOptionsNullableInnerItem where
    parseJSON v =
        ApplicationCommandResponseOptionsNullableInnerItem0 <$> parseJSON v
            <|> ApplicationCommandResponseOptionsNullableInnerItem1 <$> parseJSON v
            <|> ApplicationCommandResponseOptionsNullableInnerItem2 <$> parseJSON v
            <|> ApplicationCommandResponseOptionsNullableInnerItem3 <$> parseJSON v
            <|> ApplicationCommandResponseOptionsNullableInnerItem4 <$> parseJSON v
            <|> ApplicationCommandResponseOptionsNullableInnerItem5 <$> parseJSON v
            <|> ApplicationCommandResponseOptionsNullableInnerItem6 <$> parseJSON v
            <|> ApplicationCommandResponseOptionsNullableInnerItem7 <$> parseJSON v
            <|> ApplicationCommandResponseOptionsNullableInnerItem8 <$> parseJSON v
            <|> ApplicationCommandResponseOptionsNullableInnerItem9 <$> parseJSON v
            <|> ApplicationCommandResponseOptionsNullableInnerItem10 <$> parseJSON v