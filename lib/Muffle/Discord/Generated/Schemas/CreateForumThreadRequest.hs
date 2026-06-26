{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.CreateForumThreadRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ThreadAutoArchiveDuration
import Muffle.Discord.Generated.Schemas.BaseCreateMessageCreateRequest

data CreateForumThreadRequest = CreateForumThreadRequest
    { appliedTags :: Maybe [SnowflakeType]
    , autoArchiveDuration :: Maybe (Maybe ThreadAutoArchiveDuration)
    , message :: BaseCreateMessageCreateRequest
    , name :: String
    , rateLimitPerUser :: Maybe (Maybe Integer)
    }
    deriving (Show, Eq, Generic)
