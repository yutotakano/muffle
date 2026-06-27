{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.LobbyGuildInviteResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data LobbyGuildInviteResponse = LobbyGuildInviteResponse
    { code :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON LobbyGuildInviteResponse where
    parseJSON = withObject "LobbyGuildInviteResponse" $ \o ->
        LobbyGuildInviteResponse <$>
            o .: "code"