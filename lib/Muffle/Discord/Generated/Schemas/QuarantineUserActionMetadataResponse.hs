{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.QuarantineUserActionMetadataResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data QuarantineUserActionMetadataResponse = QuarantineUserActionMetadataResponse
    deriving (Show, Eq, Generic)

instance FromJSON QuarantineUserActionMetadataResponse where
    parseJSON = withObject "QuarantineUserActionMetadataResponse" $ \_ -> pure QuarantineUserActionMetadataResponse