{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UserSelectDefaultValueResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.SnowflakeSelectDefaultValueTypes

data UserSelectDefaultValueResponse = UserSelectDefaultValueResponse
    { id :: SnowflakeType
    , type' :: SnowflakeSelectDefaultValueTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON UserSelectDefaultValueResponse where
    parseJSON = withObject "UserSelectDefaultValueResponse" $ \o ->
        UserSelectDefaultValueResponse <$>
            o .: "id"
            <*> o .: "type"