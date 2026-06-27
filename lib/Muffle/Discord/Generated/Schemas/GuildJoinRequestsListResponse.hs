{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildJoinRequestsListResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.GuildJoinRequestResponse

data GuildJoinRequestsListResponse = GuildJoinRequestsListResponse
    { guildJoinRequests :: Maybe [GuildJoinRequestResponse]
    , total :: Maybe Int32
    }
    deriving (Show, Eq, Generic)

instance FromJSON GuildJoinRequestsListResponse where
    parseJSON = withObject "GuildJoinRequestsListResponse" $ \o ->
        GuildJoinRequestsListResponse <$>
            o .: "guild_join_requests"
            <*> o .: "total"