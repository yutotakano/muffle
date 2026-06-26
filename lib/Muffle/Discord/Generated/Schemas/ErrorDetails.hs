{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ErrorDetails where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.InnerErrors

data ErrorDetails = ErrorDetails0 ErrorDetailsOneOf0 | ErrorDetails1 InnerErrors
    deriving (Show, Eq, Generic)
data ErrorDetailsOneOf0 = ErrorDetailsOneOf0
    { 
    }
    deriving (Show, Eq, Generic)
