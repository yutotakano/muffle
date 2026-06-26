{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GithubDiscussion where

import Data.Int (Int32, Int64)
import GHC.Generics
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
