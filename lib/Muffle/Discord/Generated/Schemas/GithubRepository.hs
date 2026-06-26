{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GithubRepository where

import Data.Int (Int32, Int64)
import GHC.Generics


data GithubRepository = GithubRepository
    { fullName :: String
    , htmlUrl :: String
    , id :: Integer
    , name :: String
    }
    deriving (Show, Eq, Generic)
