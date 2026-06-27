{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MessageEmbedFieldResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data MessageEmbedFieldResponse = MessageEmbedFieldResponse
    { inline :: Bool
    , name :: String
    , value :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON MessageEmbedFieldResponse where
    parseJSON = withObject "MessageEmbedFieldResponse" $ \o ->
        MessageEmbedFieldResponse <$>
            o .: "inline"
            <*> o .: "name"
            <*> o .: "value"