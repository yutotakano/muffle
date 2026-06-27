{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.FlagToChannelAction where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.FlagToChannelActionMetadata
import Muffle.Discord.Generated.Schemas.AutomodActionType

data FlagToChannelAction = FlagToChannelAction
    { metadata :: FlagToChannelActionMetadata
    , type' :: AutomodActionType
    }
    deriving (Show, Eq, Generic)

instance FromJSON FlagToChannelAction where
    parseJSON = withObject "FlagToChannelAction" $ \o ->
        FlagToChannelAction <$>
            o .: "metadata"
            <*> o .: "type"