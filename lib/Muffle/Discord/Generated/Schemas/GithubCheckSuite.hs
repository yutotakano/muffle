{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GithubCheckSuite where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.GithubCheckApp
import Muffle.Discord.Generated.Schemas.GithubCheckPullRequest

data GithubCheckSuite = GithubCheckSuite
    { app :: GithubCheckApp
    , conclusion :: Maybe (Maybe String)
    , headBranch :: Maybe (Maybe String)
    , headSha :: String
    , pullRequests :: Maybe [GithubCheckPullRequest]
    }
    deriving (Show, Eq, Generic)

instance FromJSON GithubCheckSuite where
    parseJSON = withObject "GithubCheckSuite" $ \o ->
        GithubCheckSuite <$>
            o .: "app"
            <*> o .: "conclusion"
            <*> o .: "head_branch"
            <*> o .: "head_sha"
            <*> o .: "pull_requests"