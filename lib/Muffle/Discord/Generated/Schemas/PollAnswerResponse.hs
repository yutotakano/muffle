{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.PollAnswerResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.PollMediaResponse

data PollAnswerResponse = PollAnswerResponse
    { answerId :: Int32
    , pollMedia :: PollMediaResponse
    }
    deriving (Show, Eq, Generic)
