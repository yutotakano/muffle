{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.PinnedMessageResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.MessageResponse

data PinnedMessageResponse = PinnedMessageResponse
    { message :: MessageResponse
    , pinnedAt :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON PinnedMessageResponse where
    parseJSON = withObject "PinnedMessageResponse" $ \o ->
        PinnedMessageResponse <$>
            o .: "message"
            <*> o .: "pinned_at"