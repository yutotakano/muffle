{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GithubComment where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.GithubUser

data GithubComment = GithubComment
    { body :: String
    , commitId :: Maybe (Maybe String)
    , htmlUrl :: String
    , id :: Integer
    , user :: GithubUser
    }
    deriving (Show, Eq, Generic)
