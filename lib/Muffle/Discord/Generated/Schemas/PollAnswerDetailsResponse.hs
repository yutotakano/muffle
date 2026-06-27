{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.PollAnswerDetailsResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.UserResponse

data PollAnswerDetailsResponse = PollAnswerDetailsResponse
    { users :: [UserResponse]
    }
    deriving (Show, Eq, Generic)

instance FromJSON PollAnswerDetailsResponse where
    parseJSON = withObject "PollAnswerDetailsResponse" $ \o ->
        PollAnswerDetailsResponse <$>
            o .: "users"