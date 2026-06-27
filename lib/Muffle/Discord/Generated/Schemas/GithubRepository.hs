{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GithubRepository where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data GithubRepository = GithubRepository
    { fullName :: String
    , htmlUrl :: String
    , id :: Integer
    , name :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON GithubRepository where
    parseJSON = withObject "GithubRepository" $ \o ->
        GithubRepository <$>
            o .: "full_name"
            <*> o .: "html_url"
            <*> o .: "id"
            <*> o .: "name"