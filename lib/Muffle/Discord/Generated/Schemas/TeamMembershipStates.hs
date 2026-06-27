{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.TeamMembershipStates where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

newtype TeamMembershipStates = TeamMembershipStates Int32
    deriving (Show, Eq, Generic)

instance FromJSON TeamMembershipStates where
    parseJSON v = TeamMembershipStates <$> parseJSON v