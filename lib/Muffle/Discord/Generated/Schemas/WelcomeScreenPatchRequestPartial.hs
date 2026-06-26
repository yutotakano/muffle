{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.WelcomeScreenPatchRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.GuildWelcomeChannel

data WelcomeScreenPatchRequestPartial = WelcomeScreenPatchRequestPartial
    { description :: Maybe String
    , enabled :: Maybe Bool
    , welcomeChannels :: [GuildWelcomeChannel]
    }
    deriving (Show, Eq, Generic)
