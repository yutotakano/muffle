{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandPermission where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ApplicationCommandPermissionType

data ApplicationCommandPermission = ApplicationCommandPermission
    { id :: SnowflakeType
    , permission :: Bool
    , type' :: ApplicationCommandPermissionType
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandPermission where
    parseJSON = withObject "ApplicationCommandPermission" $ \o ->
        ApplicationCommandPermission <$>
            o .: "id"
            <*> o .: "permission"
            <*> o .: "type"