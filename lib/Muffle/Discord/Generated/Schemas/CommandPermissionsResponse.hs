{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.CommandPermissionsResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.CommandPermissionResponse

data CommandPermissionsResponse = CommandPermissionsResponse
    { applicationId :: SnowflakeType
    , guildId :: SnowflakeType
    , id :: SnowflakeType
    , permissions :: [CommandPermissionResponse]
    }
    deriving (Show, Eq, Generic)

instance FromJSON CommandPermissionsResponse where
    parseJSON = withObject "CommandPermissionsResponse" $ \o ->
        CommandPermissionsResponse <$>
            o .: "application_id"
            <*> o .: "guild_id"
            <*> o .: "id"
            <*> o .: "permissions"