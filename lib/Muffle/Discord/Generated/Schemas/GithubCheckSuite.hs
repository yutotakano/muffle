{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GithubCheckSuite where

import Data.Int (Int32, Int64)
import GHC.Generics
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
