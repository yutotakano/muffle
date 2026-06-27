{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MessageComponentSeparatorSpacingSize where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

newtype MessageComponentSeparatorSpacingSize = MessageComponentSeparatorSpacingSize Int32
    deriving (Show, Eq, Generic)

instance FromJSON MessageComponentSeparatorSpacingSize where
    parseJSON v = MessageComponentSeparatorSpacingSize <$> parseJSON v