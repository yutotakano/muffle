{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildTemplateChannelTags where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data GuildTemplateChannelTags = GuildTemplateChannelTags
    { emojiId :: Maybe SnowflakeType
    , emojiName :: Maybe String
    , id :: Maybe Int32
    , moderated :: Maybe Bool
    , name :: String
    }
    deriving (Show, Eq, Generic)
