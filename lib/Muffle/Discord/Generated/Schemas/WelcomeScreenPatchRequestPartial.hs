{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.WelcomeScreenPatchRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.GuildWelcomeChannel

data WelcomeScreenPatchRequestPartial = WelcomeScreenPatchRequestPartial
    { description :: Maybe (Maybe String)
    , enabled :: Maybe (Maybe Bool)
    , welcomeChannels :: Maybe [GuildWelcomeChannel]
    }
    deriving (Show, Eq, Generic)

instance FromJSON WelcomeScreenPatchRequestPartial where
    parseJSON = withObject "WelcomeScreenPatchRequestPartial" $ \o ->
        WelcomeScreenPatchRequestPartial <$>
            o .: "description"
            <*> o .: "enabled"
            <*> o .: "welcome_channels"