{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GithubReview where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.GithubUser

data GithubReview = GithubReview
    { body :: Maybe (Maybe String)
    , htmlUrl :: String
    , state :: String
    , user :: GithubUser
    }
    deriving (Show, Eq, Generic)

instance FromJSON GithubReview where
    parseJSON = withObject "GithubReview" $ \o ->
        GithubReview <$>
            o .: "body"
            <*> o .: "html_url"
            <*> o .: "state"
            <*> o .: "user"