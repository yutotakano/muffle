{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GithubAuthor where

import Data.Int (Int32, Int64)
import GHC.Generics


data GithubAuthor = GithubAuthor
    { name :: String
    , username :: Maybe String
    }
    deriving (Show, Eq, Generic)
