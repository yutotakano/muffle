{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.InviteChannelRecipientResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data InviteChannelRecipientResponse = InviteChannelRecipientResponse
    { avatar :: Maybe String
    , id :: SnowflakeType
    , username :: String
    }
    deriving (Show, Eq, Generic)
