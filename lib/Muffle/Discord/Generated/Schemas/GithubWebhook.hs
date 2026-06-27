{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GithubWebhook where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
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
    { action :: Maybe (Maybe String)
    , answer :: Maybe (Maybe GithubComment)
    , checkRun :: Maybe (Maybe GithubCheckRun)
    , checkSuite :: Maybe (Maybe GithubCheckSuite)
    , comment :: Maybe (Maybe GithubComment)
    , commits :: Maybe [GithubCommit]
    , compare :: Maybe (Maybe String)
    , discussion :: Maybe (Maybe GithubDiscussion)
    , forced :: Maybe (Maybe Bool)
    , forkee :: Maybe (Maybe GithubRepository)
    , headCommit :: Maybe (Maybe GithubCommit)
    , issue :: Maybe (Maybe GithubIssue)
    , member :: Maybe (Maybe GithubUser)
    , pullRequest :: Maybe (Maybe GithubIssue)
    , ref :: Maybe (Maybe String)
    , refType :: Maybe (Maybe String)
    , release :: Maybe (Maybe GithubRelease)
    , repository :: Maybe (Maybe GithubRepository)
    , review :: Maybe (Maybe GithubReview)
    , sender :: GithubUser
    }
    deriving (Show, Eq, Generic)

instance FromJSON GithubWebhook where
    parseJSON = withObject "GithubWebhook" $ \o ->
        GithubWebhook <$>
            o .: "action"
            <*> o .: "answer"
            <*> o .: "check_run"
            <*> o .: "check_suite"
            <*> o .: "comment"
            <*> o .: "commits"
            <*> o .: "compare"
            <*> o .: "discussion"
            <*> o .: "forced"
            <*> o .: "forkee"
            <*> o .: "head_commit"
            <*> o .: "issue"
            <*> o .: "member"
            <*> o .: "pull_request"
            <*> o .: "ref"
            <*> o .: "ref_type"
            <*> o .: "release"
            <*> o .: "repository"
            <*> o .: "review"
            <*> o .: "sender"