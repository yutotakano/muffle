{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.PinnedMessagesResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.PinnedMessageResponse

data PinnedMessagesResponse = PinnedMessagesResponse
    { hasMore :: Bool
    , items :: [PinnedMessageResponse]
    }
    deriving (Show, Eq, Generic)

instance FromJSON PinnedMessagesResponse where
    parseJSON = withObject "PinnedMessagesResponse" $ \o ->
        PinnedMessagesResponse <$>
            o .: "has_more"
            <*> o .: "items"