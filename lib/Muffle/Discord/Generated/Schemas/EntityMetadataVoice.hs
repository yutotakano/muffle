{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.EntityMetadataVoice where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data EntityMetadataVoice = EntityMetadataVoice
    deriving (Show, Eq, Generic)

instance FromJSON EntityMetadataVoice where
    parseJSON = withObject "EntityMetadataVoice" $ \_ -> pure EntityMetadataVoice