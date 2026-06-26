{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GithubCheckApp where

import Data.Int (Int32, Int64)
import GHC.Generics


data GithubCheckApp = GithubCheckApp
    { name :: String
    }
    deriving (Show, Eq, Generic)
