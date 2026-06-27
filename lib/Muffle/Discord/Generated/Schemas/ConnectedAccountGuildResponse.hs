{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ConnectedAccountGuildResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data ConnectedAccountGuildResponse = ConnectedAccountGuildResponse
    { icon :: Maybe String
    , id :: SnowflakeType
    , name :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON ConnectedAccountGuildResponse where
    parseJSON = withObject "ConnectedAccountGuildResponse" $ \o ->
        ConnectedAccountGuildResponse <$>
            o .: "icon"
            <*> o .: "id"
            <*> o .: "name"