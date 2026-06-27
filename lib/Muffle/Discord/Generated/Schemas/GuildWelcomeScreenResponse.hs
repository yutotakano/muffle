{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildWelcomeScreenResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.GuildWelcomeScreenChannelResponse

data GuildWelcomeScreenResponse = GuildWelcomeScreenResponse
    { description :: Maybe String
    , welcomeChannels :: [GuildWelcomeScreenChannelResponse]
    }
    deriving (Show, Eq, Generic)

instance FromJSON GuildWelcomeScreenResponse where
    parseJSON = withObject "GuildWelcomeScreenResponse" $ \o ->
        GuildWelcomeScreenResponse <$>
            o .: "description"
            <*> o .: "welcome_channels"