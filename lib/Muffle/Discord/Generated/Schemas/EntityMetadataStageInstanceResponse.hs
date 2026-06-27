{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.EntityMetadataStageInstanceResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data EntityMetadataStageInstanceResponse = EntityMetadataStageInstanceResponse
    deriving (Show, Eq, Generic)

instance FromJSON EntityMetadataStageInstanceResponse where
    parseJSON = withObject "EntityMetadataStageInstanceResponse" $ \_ -> pure EntityMetadataStageInstanceResponse