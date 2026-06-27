{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.RoleSelectDefaultValueResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.SnowflakeSelectDefaultValueTypes

data RoleSelectDefaultValueResponse = RoleSelectDefaultValueResponse
    { id :: SnowflakeType
    , type' :: SnowflakeSelectDefaultValueTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON RoleSelectDefaultValueResponse where
    parseJSON = withObject "RoleSelectDefaultValueResponse" $ \o ->
        RoleSelectDefaultValueResponse <$>
            o .: "id"
            <*> o .: "type"