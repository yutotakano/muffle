{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.PollAnswerDetailsResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.UserResponse

data PollAnswerDetailsResponse = PollAnswerDetailsResponse
    { users :: [UserResponse]
    }
    deriving (Show, Eq, Generic)
