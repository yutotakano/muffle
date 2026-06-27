{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.PollResultsResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.PollResultsEntryResponse

data PollResultsResponse = PollResultsResponse
    { answerCounts :: [PollResultsEntryResponse]
    , isFinalized :: Bool
    }
    deriving (Show, Eq, Generic)

instance FromJSON PollResultsResponse where
    parseJSON = withObject "PollResultsResponse" $ \o ->
        PollResultsResponse <$>
            o .: "answer_counts"
            <*> o .: "is_finalized"