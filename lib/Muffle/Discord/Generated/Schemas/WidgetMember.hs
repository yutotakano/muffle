{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.WidgetMember where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.WidgetActivity
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.WidgetUserDiscriminator

data WidgetMember = WidgetMember
    { activity :: Maybe WidgetActivity
    , avatar :: Maybe ()
    , avatarUrl :: String
    , channelId :: Maybe SnowflakeType
    , deaf :: Maybe Bool
    , discriminator :: WidgetUserDiscriminator
    , id :: String
    , mute :: Maybe Bool
    , selfDeaf :: Maybe Bool
    , selfMute :: Maybe Bool
    , status :: String
    , suppress :: Maybe Bool
    , username :: String
    }
    deriving (Show, Eq, Generic)
