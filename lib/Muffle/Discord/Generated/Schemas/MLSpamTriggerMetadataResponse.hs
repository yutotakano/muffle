{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MLSpamTriggerMetadataResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data MLSpamTriggerMetadataResponse = MLSpamTriggerMetadataResponse
    deriving (Show, Eq, Generic)

instance FromJSON MLSpamTriggerMetadataResponse where
    parseJSON = withObject "MLSpamTriggerMetadataResponse" $ \_ -> pure MLSpamTriggerMetadataResponse