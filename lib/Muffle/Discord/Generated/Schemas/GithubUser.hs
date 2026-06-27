{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GithubUser where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data GithubUser = GithubUser
    { avatarUrl :: String
    , htmlUrl :: String
    , id :: Integer
    , login :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON GithubUser where
    parseJSON = withObject "GithubUser" $ \o ->
        GithubUser <$>
            o .: "avatar_url"
            <*> o .: "html_url"
            <*> o .: "id"
            <*> o .: "login"