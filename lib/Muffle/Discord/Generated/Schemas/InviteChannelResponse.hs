{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.InviteChannelResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.InviteChannelRecipientResponse
import Muffle.Discord.Generated.Schemas.ChannelTypes

data InviteChannelResponse = InviteChannelResponse
    { icon :: Maybe String
    , id :: SnowflakeType
    , name :: Maybe String
    , recipients :: Maybe [InviteChannelRecipientResponse]
    , type' :: ChannelTypes
    }
    deriving (Show, Eq, Generic)
