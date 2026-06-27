{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GithubCheckPullRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data GithubCheckPullRequest = GithubCheckPullRequest
    { number :: Integer
    }
    deriving (Show, Eq, Generic)

instance FromJSON GithubCheckPullRequest where
    parseJSON = withObject "GithubCheckPullRequest" $ \o ->
        GithubCheckPullRequest <$>
            o .: "number"