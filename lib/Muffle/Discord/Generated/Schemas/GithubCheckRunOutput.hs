{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GithubCheckRunOutput where

import Data.Int (Int32, Int64)
import GHC.Generics


data GithubCheckRunOutput = GithubCheckRunOutput
    { summary :: Maybe String
    , title :: Maybe String
    }
    deriving (Show, Eq, Generic)
