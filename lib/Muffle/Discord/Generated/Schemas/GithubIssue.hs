{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GithubIssue where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.GithubUser

data GithubIssue = GithubIssue
    { body :: Maybe (Maybe String)
    , htmlUrl :: String
    , id :: Integer
    , number :: Integer
    , pullRequest :: Maybe GithubIssuePullRequestNullableInner
    , title :: String
    , user :: GithubUser
    }
    deriving (Show, Eq, Generic)
data GithubIssuePullRequestNullableInner = GithubIssuePullRequestNullableInner
    deriving (Show, Eq, Generic)
