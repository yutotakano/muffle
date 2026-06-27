{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MLSpamTriggerMetadata where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data MLSpamTriggerMetadata = MLSpamTriggerMetadata
    deriving (Show, Eq, Generic)

instance FromJSON MLSpamTriggerMetadata where
    parseJSON = withObject "MLSpamTriggerMetadata" $ \_ -> pure MLSpamTriggerMetadata