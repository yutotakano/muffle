{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.PollAnswerResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.PollMediaResponse

data PollAnswerResponse = PollAnswerResponse
    { answerId :: Int32
    , pollMedia :: PollMediaResponse
    }
    deriving (Show, Eq, Generic)

instance FromJSON PollAnswerResponse where
    parseJSON = withObject "PollAnswerResponse" $ \o ->
        PollAnswerResponse <$>
            o .: "answer_id"
            <*> o .: "poll_media"