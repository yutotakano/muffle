{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GithubComment where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.GithubUser

data GithubComment = GithubComment
    { body :: String
    , commitId :: Maybe (Maybe String)
    , htmlUrl :: String
    , id :: Integer
    , user :: GithubUser
    }
    deriving (Show, Eq, Generic)

instance FromJSON GithubComment where
    parseJSON = withObject "GithubComment" $ \o ->
        GithubComment <$>
            o .: "body"
            <*> o .: "commit_id"
            <*> o .: "html_url"
            <*> o .: "id"
            <*> o .: "user"