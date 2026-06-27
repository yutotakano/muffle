{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GithubCheckRun where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.GithubCheckSuite
import Muffle.Discord.Generated.Schemas.GithubCheckRunOutput
import Muffle.Discord.Generated.Schemas.GithubCheckPullRequest

data GithubCheckRun = GithubCheckRun
    { checkSuite :: GithubCheckSuite
    , conclusion :: Maybe (Maybe String)
    , detailsUrl :: Maybe (Maybe String)
    , htmlUrl :: String
    , name :: String
    , output :: Maybe (Maybe GithubCheckRunOutput)
    , pullRequests :: Maybe [GithubCheckPullRequest]
    }
    deriving (Show, Eq, Generic)

instance FromJSON GithubCheckRun where
    parseJSON = withObject "GithubCheckRun" $ \o ->
        GithubCheckRun <$>
            o .: "check_suite"
            <*> o .: "conclusion"
            <*> o .: "details_url"
            <*> o .: "html_url"
            <*> o .: "name"
            <*> o .: "output"
            <*> o .: "pull_requests"