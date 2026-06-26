{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.PollAnswerCreateRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.PollMediaCreateRequest

data PollAnswerCreateRequest = PollAnswerCreateRequest
    { pollMedia :: PollMediaCreateRequest
    }
    deriving (Show, Eq, Generic)
