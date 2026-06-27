{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ErrorResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data ErrorResponse = ErrorResponse
    deriving (Show, Eq, Generic)

instance FromJSON ErrorResponse where
    parseJSON = withObject "ErrorResponse" $ \_ -> pure ErrorResponse