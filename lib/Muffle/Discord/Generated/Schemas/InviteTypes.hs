{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.InviteTypes where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

newtype InviteTypes = InviteTypes Int32
    deriving (Show, Eq, Generic)

instance FromJSON InviteTypes where
    parseJSON v = InviteTypes <$> parseJSON v