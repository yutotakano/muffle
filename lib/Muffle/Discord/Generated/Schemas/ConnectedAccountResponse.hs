{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ConnectedAccountResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ConnectedAccountIntegrationResponse
import Muffle.Discord.Generated.Schemas.ConnectedAccountProviders
import Muffle.Discord.Generated.Schemas.ConnectedAccountVisibility

data ConnectedAccountResponse = ConnectedAccountResponse
    { friendSync :: Bool
    , id :: String
    , integrations :: Maybe [ConnectedAccountIntegrationResponse]
    , name :: Maybe String
    , revoked :: Maybe Bool
    , showActivity :: Bool
    , twoWayLink :: Bool
    , type' :: ConnectedAccountProviders
    , verified :: Bool
    , visibility :: ConnectedAccountVisibility
    }
    deriving (Show, Eq, Generic)

instance FromJSON ConnectedAccountResponse where
    parseJSON = withObject "ConnectedAccountResponse" $ \o ->
        ConnectedAccountResponse <$>
            o .: "friend_sync"
            <*> o .: "id"
            <*> o .: "integrations"
            <*> o .: "name"
            <*> o .: "revoked"
            <*> o .: "show_activity"
            <*> o .: "two_way_link"
            <*> o .: "type"
            <*> o .: "verified"
            <*> o .: "visibility"