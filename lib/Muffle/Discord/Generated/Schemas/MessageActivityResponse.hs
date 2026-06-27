{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MessageActivityResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ActivityActionTypes

data MessageActivityResponse = MessageActivityResponse
    { partyId :: Maybe String
    , type' :: ActivityActionTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON MessageActivityResponse where
    parseJSON = withObject "MessageActivityResponse" $ \o ->
        MessageActivityResponse <$>
            o .: "party_id"
            <*> o .: "type"