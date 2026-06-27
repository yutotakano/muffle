{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GithubDiscussion where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.GithubUser

data GithubDiscussion = GithubDiscussion
    { answerHtmlUrl :: Maybe (Maybe String)
    , body :: Maybe (Maybe String)
    , htmlUrl :: String
    , number :: Integer
    , title :: String
    , user :: GithubUser
    }
    deriving (Show, Eq, Generic)

instance FromJSON GithubDiscussion where
    parseJSON = withObject "GithubDiscussion" $ \o ->
        GithubDiscussion <$>
            o .: "answer_html_url"
            <*> o .: "body"
            <*> o .: "html_url"
            <*> o .: "number"
            <*> o .: "title"
            <*> o .: "user"