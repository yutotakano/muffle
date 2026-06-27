{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.PollResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.PollAnswerResponse
import Muffle.Discord.Generated.Schemas.PollLayoutTypes
import Muffle.Discord.Generated.Schemas.PollMediaResponse
import Muffle.Discord.Generated.Schemas.PollResultsResponse

data PollResponse = PollResponse
    { allowMultiselect :: Bool
    , answers :: [PollAnswerResponse]
    , expiry :: String
    , layoutType :: PollLayoutTypes
    , question :: PollMediaResponse
    , results :: PollResultsResponse
    }
    deriving (Show, Eq, Generic)

instance FromJSON PollResponse where
    parseJSON = withObject "PollResponse" $ \o ->
        PollResponse <$>
            o .: "allow_multiselect"
            <*> o .: "answers"
            <*> o .: "expiry"
            <*> o .: "layout_type"
            <*> o .: "question"
            <*> o .: "results"