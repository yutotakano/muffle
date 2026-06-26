{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandUpdateRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
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
newtype ApplicationCommandUpdateRequestDescriptionLocalizationsNullableInner = ApplicationCommandUpdateRequestDescriptionLocalizationsNullableInner (Maybe ApplicationCommandUpdateRequestDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandUpdateRequestDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandUpdateRequestDescriptionLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandUpdateRequestNameLocalizationsNullableInner = ApplicationCommandUpdateRequestNameLocalizationsNullableInner (Maybe ApplicationCommandUpdateRequestNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandUpdateRequestNameLocalizationsNullableInnerNullableInner = ApplicationCommandUpdateRequestNameLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandUpdateRequestOptionsNullableInner = ApplicationCommandUpdateRequestOptionsNullableInner [ApplicationCommandUpdateRequestOptionsNullableInnerItem]
    deriving (Show, Eq, Generic)
data ApplicationCommandUpdateRequestOptionsNullableInnerItem = ApplicationCommandUpdateRequestOptionsNullableInnerItem0 ApplicationCommandAttachmentOption | ApplicationCommandUpdateRequestOptionsNullableInnerItem1 ApplicationCommandBooleanOption | ApplicationCommandUpdateRequestOptionsNullableInnerItem2 ApplicationCommandChannelOption | ApplicationCommandUpdateRequestOptionsNullableInnerItem3 ApplicationCommandIntegerOption | ApplicationCommandUpdateRequestOptionsNullableInnerItem4 ApplicationCommandMentionableOption | ApplicationCommandUpdateRequestOptionsNullableInnerItem5 ApplicationCommandNumberOption | ApplicationCommandUpdateRequestOptionsNullableInnerItem6 ApplicationCommandRoleOption | ApplicationCommandUpdateRequestOptionsNullableInnerItem7 ApplicationCommandStringOption | ApplicationCommandUpdateRequestOptionsNullableInnerItem8 ApplicationCommandSubcommandGroupOption | ApplicationCommandUpdateRequestOptionsNullableInnerItem9 ApplicationCommandSubcommandOption | ApplicationCommandUpdateRequestOptionsNullableInnerItem10 ApplicationCommandUserOption
    deriving (Show, Eq, Generic)
