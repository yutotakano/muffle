{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandSubcommandOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType
import Muffle.Discord.Generated.Schemas.ApplicationCommandAttachmentOptionResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandBooleanOptionResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandChannelOptionResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandIntegerOptionResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandMentionableOptionResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandNumberOptionResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandRoleOptionResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandStringOptionResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandUserOptionResponse

data ApplicationCommandSubcommandOptionResponse = ApplicationCommandSubcommandOptionResponse
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandSubcommandOptionResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: String
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandSubcommandOptionResponseNameLocalizationsNullableInner
    , nameLocalized :: String
    , options :: [ApplicationCommandSubcommandOptionResponseOptionsItem]
    , required :: Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandSubcommandOptionResponseDescriptionLocalizationsNullableInner = ApplicationCommandSubcommandOptionResponseDescriptionLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandSubcommandOptionResponseNameLocalizationsNullableInner = ApplicationCommandSubcommandOptionResponseNameLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandSubcommandOptionResponseOptionsItem = ApplicationCommandSubcommandOptionResponseOptionsItem0 ApplicationCommandAttachmentOptionResponse | ApplicationCommandSubcommandOptionResponseOptionsItem1 ApplicationCommandBooleanOptionResponse | ApplicationCommandSubcommandOptionResponseOptionsItem2 ApplicationCommandChannelOptionResponse | ApplicationCommandSubcommandOptionResponseOptionsItem3 ApplicationCommandIntegerOptionResponse | ApplicationCommandSubcommandOptionResponseOptionsItem4 ApplicationCommandMentionableOptionResponse | ApplicationCommandSubcommandOptionResponseOptionsItem5 ApplicationCommandNumberOptionResponse | ApplicationCommandSubcommandOptionResponseOptionsItem6 ApplicationCommandRoleOptionResponse | ApplicationCommandSubcommandOptionResponseOptionsItem7 ApplicationCommandStringOptionResponse | ApplicationCommandSubcommandOptionResponseOptionsItem8 ApplicationCommandUserOptionResponse
    deriving (Show, Eq, Generic)
