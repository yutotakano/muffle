{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.QuarantineUserActionMetadata where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data QuarantineUserActionMetadata = QuarantineUserActionMetadata
    deriving (Show, Eq, Generic)

instance FromJSON QuarantineUserActionMetadata where
    parseJSON = withObject "QuarantineUserActionMetadata" $ \_ -> pure QuarantineUserActionMetadata