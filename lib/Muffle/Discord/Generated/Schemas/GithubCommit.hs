{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GithubCommit where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.GithubAuthor

data GithubCommit = GithubCommit
    { author :: GithubAuthor
    , id :: String
    , message :: String
    , url :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON GithubCommit where
    parseJSON = withObject "GithubCommit" $ \o ->
        GithubCommit <$>
            o .: "author"
            <*> o .: "id"
            <*> o .: "message"
            <*> o .: "url"