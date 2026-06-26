{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.CreatePrivateChannelRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data CreatePrivateChannelRequest = CreatePrivateChannelRequest
    { accessTokens :: Maybe [String]
    , nicks :: Maybe CreatePrivateChannelRequestNicksNullableInner
    , recipientId :: Maybe (Maybe SnowflakeType)
    }
    deriving (Show, Eq, Generic)
newtype CreatePrivateChannelRequestNicksNullableInner = CreatePrivateChannelRequestNicksNullableInner (Maybe CreatePrivateChannelRequestNicksNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data CreatePrivateChannelRequestNicksNullableInnerNullableInner = CreatePrivateChannelRequestNicksNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
