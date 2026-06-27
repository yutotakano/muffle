{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.TeamResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.TeamMemberResponse

data TeamResponse = TeamResponse
    { icon :: Maybe String
    , id :: SnowflakeType
    , members :: [TeamMemberResponse]
    , name :: String
    , ownerUserId :: SnowflakeType
    }
    deriving (Show, Eq, Generic)

instance FromJSON TeamResponse where
    parseJSON = withObject "TeamResponse" $ \o ->
        TeamResponse <$>
            o .: "icon"
            <*> o .: "id"
            <*> o .: "members"
            <*> o .: "name"
            <*> o .: "owner_user_id"