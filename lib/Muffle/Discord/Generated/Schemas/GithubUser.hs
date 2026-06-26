{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GithubUser where

import Data.Int (Int32, Int64)
import GHC.Generics


data GithubUser = GithubUser
    { avatarUrl :: String
    , htmlUrl :: String
    , id :: Integer
    , login :: String
    }
    deriving (Show, Eq, Generic)
