{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GithubCheckPullRequest where

import Data.Int (Int32, Int64)
import GHC.Generics


data GithubCheckPullRequest = GithubCheckPullRequest
    { number :: Integer
    }
    deriving (Show, Eq, Generic)
