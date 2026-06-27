{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.InviteChannelResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.InviteChannelRecipientResponse
import Muffle.Discord.Generated.Schemas.ChannelTypes

data InviteChannelResponse = InviteChannelResponse
    { icon :: Maybe String
    , id :: SnowflakeType
    , name :: Maybe String
    , recipients :: Maybe [InviteChannelRecipientResponse]
    , type' :: ChannelTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON InviteChannelResponse where
    parseJSON = withObject "InviteChannelResponse" $ \o ->
        InviteChannelResponse <$>
            o .: "icon"
            <*> o .: "id"
            <*> o .: "name"
            <*> o .: "recipients"
            <*> o .: "type"