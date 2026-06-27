{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.PollResultsEntryResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data PollResultsEntryResponse = PollResultsEntryResponse
    { count :: Int32
    , id :: Int32
    , meVoted :: Bool
    }
    deriving (Show, Eq, Generic)

instance FromJSON PollResultsEntryResponse where
    parseJSON = withObject "PollResultsEntryResponse" $ \o ->
        PollResultsEntryResponse <$>
            o .: "count"
            <*> o .: "id"
            <*> o .: "me_voted"