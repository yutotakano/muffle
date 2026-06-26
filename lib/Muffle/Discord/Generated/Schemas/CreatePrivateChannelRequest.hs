{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.CreatePrivateChannelRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data CreatePrivateChannelRequest = CreatePrivateChannelRequest
    { accessTokens :: [String]
    , nicks :: Maybe CreatePrivateChannelRequestNicksNullableInner
    , recipientId :: Maybe SnowflakeType
    }
    deriving (Show, Eq, Generic)
data CreatePrivateChannelRequestNicksNullableInner = CreatePrivateChannelRequestNicksNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
