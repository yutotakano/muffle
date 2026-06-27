{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GithubCheckRunOutput where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data GithubCheckRunOutput = GithubCheckRunOutput
    { summary :: Maybe (Maybe String)
    , title :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)

instance FromJSON GithubCheckRunOutput where
    parseJSON = withObject "GithubCheckRunOutput" $ \o ->
        GithubCheckRunOutput <$>
            o .: "summary"
            <*> o .: "title"