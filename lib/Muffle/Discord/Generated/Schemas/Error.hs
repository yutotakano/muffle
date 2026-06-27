{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.Error where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data Error = Error
    { code :: Integer
    , message :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON Error where
    parseJSON = withObject "Error" $ \o ->
        Error <$>
            o .: "code"
            <*> o .: "message"