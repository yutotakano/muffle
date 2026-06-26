{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GithubRelease where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.GithubUser

data GithubRelease = GithubRelease
    { author :: GithubUser
    , htmlUrl :: String
    , id :: Integer
    , tagName :: String
    }
    deriving (Show, Eq, Generic)
