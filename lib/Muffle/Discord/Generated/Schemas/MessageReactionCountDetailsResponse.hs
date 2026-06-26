{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MessageReactionCountDetailsResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data MessageReactionCountDetailsResponse = MessageReactionCountDetailsResponse
    { burst :: Int32
    , normal :: Int32
    }
    deriving (Show, Eq, Generic)
