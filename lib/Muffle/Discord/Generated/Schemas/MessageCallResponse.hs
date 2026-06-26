{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MessageCallResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data MessageCallResponse = MessageCallResponse
    { endedTimestamp :: Maybe (Maybe String)
    , participants :: [SnowflakeType]
    }
    deriving (Show, Eq, Generic)
