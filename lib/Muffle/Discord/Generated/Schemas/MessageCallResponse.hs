{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MessageCallResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data MessageCallResponse = MessageCallResponse
    { endedTimestamp :: Maybe (Maybe String)
    , participants :: [SnowflakeType]
    }
    deriving (Show, Eq, Generic)

instance FromJSON MessageCallResponse where
    parseJSON = withObject "MessageCallResponse" $ \o ->
        MessageCallResponse <$>
            o .: "ended_timestamp"
            <*> o .: "participants"