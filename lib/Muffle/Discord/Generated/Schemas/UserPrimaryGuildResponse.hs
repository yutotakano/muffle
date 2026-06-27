{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UserPrimaryGuildResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data UserPrimaryGuildResponse = UserPrimaryGuildResponse
    { badge :: Maybe String
    , identityEnabled :: Maybe Bool
    , identityGuildId :: Maybe SnowflakeType
    , tag :: Maybe String
    }
    deriving (Show, Eq, Generic)

instance FromJSON UserPrimaryGuildResponse where
    parseJSON = withObject "UserPrimaryGuildResponse" $ \o ->
        UserPrimaryGuildResponse <$>
            o .: "badge"
            <*> o .: "identity_enabled"
            <*> o .: "identity_guild_id"
            <*> o .: "tag"