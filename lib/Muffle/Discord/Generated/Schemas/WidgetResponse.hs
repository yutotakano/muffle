{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.WidgetResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.WidgetChannel
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.WidgetMember

data WidgetResponse = WidgetResponse
    { channels :: [WidgetChannel]
    , id :: SnowflakeType
    , instantInvite :: Maybe String
    , members :: [WidgetMember]
    , name :: String
    , presenceCount :: Int32
    }
    deriving (Show, Eq, Generic)

instance FromJSON WidgetResponse where
    parseJSON = withObject "WidgetResponse" $ \o ->
        WidgetResponse <$>
            o .: "channels"
            <*> o .: "id"
            <*> o .: "instant_invite"
            <*> o .: "members"
            <*> o .: "name"
            <*> o .: "presence_count"