{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.SeparatorComponentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.MessageComponentSeparatorSpacingSize
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data SeparatorComponentResponse = SeparatorComponentResponse
    { divider :: Bool
    , id :: Int32
    , spacing :: MessageComponentSeparatorSpacingSize
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON SeparatorComponentResponse where
    parseJSON = withObject "SeparatorComponentResponse" $ \o ->
        SeparatorComponentResponse <$>
            o .: "divider"
            <*> o .: "id"
            <*> o .: "spacing"
            <*> o .: "type"