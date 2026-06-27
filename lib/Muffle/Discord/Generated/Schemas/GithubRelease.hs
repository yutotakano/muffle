{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GithubRelease where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.GithubUser

data GithubRelease = GithubRelease
    { author :: GithubUser
    , htmlUrl :: String
    , id :: Integer
    , tagName :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON GithubRelease where
    parseJSON = withObject "GithubRelease" $ \o ->
        GithubRelease <$>
            o .: "author"
            <*> o .: "html_url"
            <*> o .: "id"
            <*> o .: "tag_name"