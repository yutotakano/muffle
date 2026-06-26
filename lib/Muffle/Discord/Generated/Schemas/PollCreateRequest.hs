{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.PollCreateRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.PollAnswerCreateRequest
import Muffle.Discord.Generated.Schemas.PollLayoutTypes
import Muffle.Discord.Generated.Schemas.PollMedia

data PollCreateRequest = PollCreateRequest
    { allowMultiselect :: Maybe (Maybe Bool)
    , answers :: [PollAnswerCreateRequest]
    , duration :: Maybe (Maybe Int32)
    , layoutType :: Maybe (Maybe PollLayoutTypes)
    , question :: PollMedia
    }
    deriving (Show, Eq, Generic)
