{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GithubCommit where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.GithubAuthor

data GithubCommit = GithubCommit
    { author :: GithubAuthor
    , id :: String
    , message :: String
    , url :: String
    }
    deriving (Show, Eq, Generic)
