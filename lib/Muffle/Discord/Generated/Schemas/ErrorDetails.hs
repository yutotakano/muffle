{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ErrorDetails where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.InnerErrors

data ErrorDetails = ErrorDetails0 ErrorDetailsOneOf0 | ErrorDetails1 InnerErrors
    deriving (Show, Eq, Generic)

instance FromJSON ErrorDetails where
    parseJSON v =
        ErrorDetails0 <$> parseJSON v
            <|> ErrorDetails1 <$> parseJSON v

data ErrorDetailsOneOf0 = ErrorDetailsOneOf0
    deriving (Show, Eq, Generic)

instance FromJSON ErrorDetailsOneOf0 where
    parseJSON = withObject "ErrorDetailsOneOf0" $ \_ -> pure ErrorDetailsOneOf0