{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.InviteChannelRecipientResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data InviteChannelRecipientResponse = InviteChannelRecipientResponse
    { avatar :: Maybe String
    , id :: SnowflakeType
    , username :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON InviteChannelRecipientResponse where
    parseJSON = withObject "InviteChannelRecipientResponse" $ \o ->
        InviteChannelRecipientResponse <$>
            o .: "avatar"
            <*> o .: "id"
            <*> o .: "username"