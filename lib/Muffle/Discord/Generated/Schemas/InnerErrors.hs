{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.InnerErrors where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.Error

data InnerErrors = InnerErrors
    { aErrors :: [Error]
    }
    deriving (Show, Eq, Generic)

instance FromJSON InnerErrors where
    parseJSON = withObject "InnerErrors" $ \o ->
        InnerErrors <$>
            o .: "_errors"