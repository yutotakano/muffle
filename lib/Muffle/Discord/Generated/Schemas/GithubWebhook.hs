{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GithubWebhook where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.GithubComment
import Muffle.Discord.Generated.Schemas.GithubCheckRun
import Muffle.Discord.Generated.Schemas.GithubCheckSuite
import Muffle.Discord.Generated.Schemas.GithubCommit
import Muffle.Discord.Generated.Schemas.GithubDiscussion
import Muffle.Discord.Generated.Schemas.GithubRepository
import Muffle.Discord.Generated.Schemas.GithubIssue
import Muffle.Discord.Generated.Schemas.GithubUser
import Muffle.Discord.Generated.Schemas.GithubRelease
import Muffle.Discord.Generated.Schemas.GithubReview

data GithubWebhook = GithubWebhook
    { action :: Maybe String
    , answer :: Maybe GithubComment
    , checkRun :: Maybe GithubCheckRun
    , checkSuite :: Maybe GithubCheckSuite
    , comment :: Maybe GithubComment
    , commits :: [GithubCommit]
    , compare :: Maybe String
    , discussion :: Maybe GithubDiscussion
    , forced :: Maybe Bool
    , forkee :: Maybe GithubRepository
    , headCommit :: Maybe GithubCommit
    , issue :: Maybe GithubIssue
    , member :: Maybe GithubUser
    , pullRequest :: Maybe GithubIssue
    , ref :: Maybe String
    , refType :: Maybe String
    , release :: Maybe GithubRelease
    , repository :: Maybe GithubRepository
    , review :: Maybe GithubReview
    , sender :: GithubUser
    }
    deriving (Show, Eq, Generic)
