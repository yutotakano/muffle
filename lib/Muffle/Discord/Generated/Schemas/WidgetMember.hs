{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.WidgetMember where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.WidgetActivity
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.WidgetUserDiscriminator

data WidgetMember = WidgetMember
    { activity :: WidgetActivity
    , avatar :: Maybe ()
    , avatarUrl :: String
    , channelId :: SnowflakeType
    , deaf :: Bool
    , discriminator :: WidgetUserDiscriminator
    , id :: String
    , mute :: Bool
    , selfDeaf :: Bool
    , selfMute :: Bool
    , status :: String
    , suppress :: Bool
    , username :: String
    }
    deriving (Show, Eq, Generic)
