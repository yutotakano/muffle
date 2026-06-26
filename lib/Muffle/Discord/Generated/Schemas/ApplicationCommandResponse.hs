{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
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
newtype ApplicationCommandResponseDescriptionLocalizationsNullableInner = ApplicationCommandResponseDescriptionLocalizationsNullableInner (Maybe ApplicationCommandResponseDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandResponseDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandResponseDescriptionLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandResponseNameLocalizationsNullableInner = ApplicationCommandResponseNameLocalizationsNullableInner (Maybe ApplicationCommandResponseNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandResponseNameLocalizationsNullableInnerNullableInner = ApplicationCommandResponseNameLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandResponseOptionsNullableInner = ApplicationCommandResponseOptionsNullableInner [ApplicationCommandResponseOptionsNullableInnerItem]
    deriving (Show, Eq, Generic)
data ApplicationCommandResponseOptionsNullableInnerItem = ApplicationCommandResponseOptionsNullableInnerItem0 ApplicationCommandAttachmentOptionResponse | ApplicationCommandResponseOptionsNullableInnerItem1 ApplicationCommandBooleanOptionResponse | ApplicationCommandResponseOptionsNullableInnerItem2 ApplicationCommandChannelOptionResponse | ApplicationCommandResponseOptionsNullableInnerItem3 ApplicationCommandIntegerOptionResponse | ApplicationCommandResponseOptionsNullableInnerItem4 ApplicationCommandMentionableOptionResponse | ApplicationCommandResponseOptionsNullableInnerItem5 ApplicationCommandNumberOptionResponse | ApplicationCommandResponseOptionsNullableInnerItem6 ApplicationCommandRoleOptionResponse | ApplicationCommandResponseOptionsNullableInnerItem7 ApplicationCommandStringOptionResponse | ApplicationCommandResponseOptionsNullableInnerItem8 ApplicationCommandSubcommandGroupOptionResponse | ApplicationCommandResponseOptionsNullableInnerItem9 ApplicationCommandSubcommandOptionResponse | ApplicationCommandResponseOptionsNullableInnerItem10 ApplicationCommandUserOptionResponse
    deriving (Show, Eq, Generic)
