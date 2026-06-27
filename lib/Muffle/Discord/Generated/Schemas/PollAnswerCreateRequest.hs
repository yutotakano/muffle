{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.PollAnswerCreateRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.PollMediaCreateRequest

data PollAnswerCreateRequest = PollAnswerCreateRequest
    { pollMedia :: PollMediaCreateRequest
    }
    deriving (Show, Eq, Generic)

instance FromJSON PollAnswerCreateRequest where
    parseJSON = withObject "PollAnswerCreateRequest" $ \o ->
        PollAnswerCreateRequest <$>
            o .: "poll_media"