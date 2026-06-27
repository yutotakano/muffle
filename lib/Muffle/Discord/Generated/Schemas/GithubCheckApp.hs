{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GithubCheckApp where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data GithubCheckApp = GithubCheckApp
    { name :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON GithubCheckApp where
    parseJSON = withObject "GithubCheckApp" $ \o ->
        GithubCheckApp <$>
            o .: "name"