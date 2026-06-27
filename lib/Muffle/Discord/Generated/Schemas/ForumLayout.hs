{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ForumLayout where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

newtype ForumLayout = ForumLayout Int32
    deriving (Show, Eq, Generic)

instance FromJSON ForumLayout where
    parseJSON v = ForumLayout <$> parseJSON v