{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MyGuildResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.GuildFeatures
import Muffle.Discord.Generated.Schemas.SnowflakeType

data MyGuildResponse = MyGuildResponse
    { approximateMemberCount :: Maybe (Maybe Int32)
    , approximatePresenceCount :: Maybe (Maybe Int32)
    , banner :: Maybe String
    , features :: [GuildFeatures]
    , icon :: Maybe String
    , id :: SnowflakeType
    , name :: String
    , owner :: Bool
    , permissions :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON MyGuildResponse where
    parseJSON = withObject "MyGuildResponse" $ \o ->
        MyGuildResponse <$>
            o .: "approximate_member_count"
            <*> o .: "approximate_presence_count"
            <*> o .: "banner"
            <*> o .: "features"
            <*> o .: "icon"
            <*> o .: "id"
            <*> o .: "name"
            <*> o .: "owner"
            <*> o .: "permissions"