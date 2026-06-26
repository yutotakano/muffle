{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GithubCheckRun where

import Data.Int (Int32, Int64)
import GHC.Generics
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
