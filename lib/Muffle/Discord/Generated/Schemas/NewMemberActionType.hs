{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.NewMemberActionType where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

newtype NewMemberActionType = NewMemberActionType Int32
    deriving (Show, Eq, Generic)

instance FromJSON NewMemberActionType where
    parseJSON v = NewMemberActionType <$> parseJSON v