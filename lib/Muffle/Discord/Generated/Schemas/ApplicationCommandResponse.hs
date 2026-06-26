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
    , contexts :: [InteractionContextType]
    , defaultMemberPermissions :: Maybe String
    , description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: String
    , dmPermission :: Bool
    , guildId :: SnowflakeType
    , handler :: ApplicationCommandHandler
    , id :: SnowflakeType
    , integrationTypes :: [ApplicationIntegrationType]
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandResponseNameLocalizationsNullableInner
    , nameLocalized :: String
    , nsfw :: Bool
    , options :: [ApplicationCommandResponseOptionsItem]
    , type' :: ApplicationCommandType
    , version :: SnowflakeType
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandResponseDescriptionLocalizationsNullableInner = ApplicationCommandResponseDescriptionLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandResponseNameLocalizationsNullableInner = ApplicationCommandResponseNameLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandResponseOptionsItem = ApplicationCommandResponseOptionsItem0 ApplicationCommandAttachmentOptionResponse | ApplicationCommandResponseOptionsItem1 ApplicationCommandBooleanOptionResponse | ApplicationCommandResponseOptionsItem2 ApplicationCommandChannelOptionResponse | ApplicationCommandResponseOptionsItem3 ApplicationCommandIntegerOptionResponse | ApplicationCommandResponseOptionsItem4 ApplicationCommandMentionableOptionResponse | ApplicationCommandResponseOptionsItem5 ApplicationCommandNumberOptionResponse | ApplicationCommandResponseOptionsItem6 ApplicationCommandRoleOptionResponse | ApplicationCommandResponseOptionsItem7 ApplicationCommandStringOptionResponse | ApplicationCommandResponseOptionsItem8 ApplicationCommandSubcommandGroupOptionResponse | ApplicationCommandResponseOptionsItem9 ApplicationCommandSubcommandOptionResponse | ApplicationCommandResponseOptionsItem10 ApplicationCommandUserOptionResponse
    deriving (Show, Eq, Generic)
