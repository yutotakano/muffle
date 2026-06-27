{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.AccountResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data AccountResponse = AccountResponse
    { id :: String
    , name :: Maybe String
    }
    deriving (Show, Eq, Generic)

instance FromJSON AccountResponse where
    parseJSON = withObject "AccountResponse" $ \o ->
        AccountResponse <$>
            o .: "id"
            <*> o .: "name"