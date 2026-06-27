{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.CreateGroupDMInviteRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data CreateGroupDMInviteRequest = CreateGroupDMInviteRequest
    { maxAge :: Maybe (Maybe Integer)
    }
    deriving (Show, Eq, Generic)

instance FromJSON CreateGroupDMInviteRequest where
    parseJSON = withObject "CreateGroupDMInviteRequest" $ \o ->
        CreateGroupDMInviteRequest <$>
            o .: "max_age"