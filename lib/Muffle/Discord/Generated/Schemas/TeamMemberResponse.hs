{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.TeamMemberResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.TeamMembershipStates
import Muffle.Discord.Generated.Schemas.TeamMemberRoles
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.UserResponse

data TeamMemberResponse = TeamMemberResponse
    { membershipState :: TeamMembershipStates
    , permissions :: [String]
    , role :: TeamMemberRoles
    , teamId :: SnowflakeType
    , user :: UserResponse
    }
    deriving (Show, Eq, Generic)

instance FromJSON TeamMemberResponse where
    parseJSON = withObject "TeamMemberResponse" $ \o ->
        TeamMemberResponse <$>
            o .: "membership_state"
            <*> o .: "permissions"
            <*> o .: "role"
            <*> o .: "team_id"
            <*> o .: "user"