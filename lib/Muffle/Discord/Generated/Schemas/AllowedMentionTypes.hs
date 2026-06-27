{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.AllowedMentionTypes where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data AllowedMentionTypes = AllowedMentionTypesUsers | AllowedMentionTypesRoles | AllowedMentionTypesEveryone
    deriving (Show, Eq, Generic)

instance FromJSON AllowedMentionTypes where
    parseJSON v = case v of
        "users" -> pure AllowedMentionTypesUsers
        "roles" -> pure AllowedMentionTypesRoles
        "everyone" -> pure AllowedMentionTypesEveryone
        _ -> fail "Expected one of the constants in the oneOf schema"