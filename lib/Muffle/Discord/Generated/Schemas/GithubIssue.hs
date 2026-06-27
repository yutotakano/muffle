{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GithubIssue where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
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

instance FromJSON GithubIssue where
    parseJSON = withObject "GithubIssue" $ \o ->
        GithubIssue <$>
            o .: "body"
            <*> o .: "html_url"
            <*> o .: "id"
            <*> o .: "number"
            <*> o .: "pull_request"
            <*> o .: "title"
            <*> o .: "user"

data GithubIssuePullRequestNullableInner = GithubIssuePullRequestNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON GithubIssuePullRequestNullableInner where
    parseJSON _ = fail "Expected empty schema"