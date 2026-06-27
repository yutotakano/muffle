{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UpdateRolePositionsRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data UpdateRolePositionsRequest = UpdateRolePositionsRequest
    { id :: Maybe (Maybe SnowflakeType)
    , position :: Maybe (Maybe Int32)
    }
    deriving (Show, Eq, Generic)

instance FromJSON UpdateRolePositionsRequest where
    parseJSON = withObject "UpdateRolePositionsRequest" $ \o ->
        UpdateRolePositionsRequest <$>
            o .: "id"
            <*> o .: "position"