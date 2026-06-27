{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GithubAuthor where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data GithubAuthor = GithubAuthor
    { name :: String
    , username :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)

instance FromJSON GithubAuthor where
    parseJSON = withObject "GithubAuthor" $ \o ->
        GithubAuthor <$>
            o .: "name"
            <*> o .: "username"