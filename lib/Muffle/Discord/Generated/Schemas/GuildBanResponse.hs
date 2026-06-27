{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildBanResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.UserResponse

data GuildBanResponse = GuildBanResponse
    { reason :: Maybe String
    , user :: UserResponse
    }
    deriving (Show, Eq, Generic)

instance FromJSON GuildBanResponse where
    parseJSON = withObject "GuildBanResponse" $ \o ->
        GuildBanResponse <$>
            o .: "reason"
            <*> o .: "user"