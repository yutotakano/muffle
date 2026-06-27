{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.FlagToChannelActionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.FlagToChannelActionMetadataResponse
import Muffle.Discord.Generated.Schemas.AutomodActionType

data FlagToChannelActionResponse = FlagToChannelActionResponse
    { metadata :: FlagToChannelActionMetadataResponse
    , type' :: AutomodActionType
    }
    deriving (Show, Eq, Generic)

instance FromJSON FlagToChannelActionResponse where
    parseJSON = withObject "FlagToChannelActionResponse" $ \o ->
        FlagToChannelActionResponse <$>
            o .: "metadata"
            <*> o .: "type"