{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildWelcomeScreenResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.GuildWelcomeScreenChannelResponse

data GuildWelcomeScreenResponse = GuildWelcomeScreenResponse
    { description :: Maybe String
    , welcomeChannels :: [GuildWelcomeScreenChannelResponse]
    }
    deriving (Show, Eq, Generic)
