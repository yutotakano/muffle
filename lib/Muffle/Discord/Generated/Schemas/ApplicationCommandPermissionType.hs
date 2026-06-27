{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandPermissionType where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

newtype ApplicationCommandPermissionType = ApplicationCommandPermissionType Int32
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandPermissionType where
    parseJSON v = ApplicationCommandPermissionType <$> parseJSON v