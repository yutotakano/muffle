{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MessageSnapshotResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.MinimalContentMessageResponse

data MessageSnapshotResponse = MessageSnapshotResponse
    { message :: MinimalContentMessageResponse
    }
    deriving (Show, Eq, Generic)

instance FromJSON MessageSnapshotResponse where
    parseJSON = withObject "MessageSnapshotResponse" $ \o ->
        MessageSnapshotResponse <$>
            o .: "message"