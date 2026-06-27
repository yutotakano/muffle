{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.RatelimitedResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data RatelimitedResponse = RatelimitedResponse
    deriving (Show, Eq, Generic)

instance FromJSON RatelimitedResponse where
    parseJSON = withObject "RatelimitedResponse" $ \_ -> pure RatelimitedResponse