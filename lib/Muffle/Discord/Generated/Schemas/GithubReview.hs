{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GithubReview where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.GithubUser

data GithubReview = GithubReview
    { body :: Maybe (Maybe String)
    , htmlUrl :: String
    , state :: String
    , user :: GithubUser
    }
    deriving (Show, Eq, Generic)
