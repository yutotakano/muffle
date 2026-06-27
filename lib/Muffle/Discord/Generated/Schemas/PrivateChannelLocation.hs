{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.PrivateChannelLocation where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.EmbeddedActivityLocationKind

data PrivateChannelLocation = PrivateChannelLocation
    { channelId :: SnowflakeType
    , id :: String
    , kind :: EmbeddedActivityLocationKind
    }
    deriving (Show, Eq, Generic)

instance FromJSON PrivateChannelLocation where
    parseJSON = withObject "PrivateChannelLocation" $ \o ->
        PrivateChannelLocation <$>
            o .: "channel_id"
            <*> o .: "id"
            <*> o .: "kind"