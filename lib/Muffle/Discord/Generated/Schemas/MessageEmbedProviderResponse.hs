{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MessageEmbedProviderResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data MessageEmbedProviderResponse = MessageEmbedProviderResponse
    { name :: String
    , url :: Maybe String
    }
    deriving (Show, Eq, Generic)

instance FromJSON MessageEmbedProviderResponse where
    parseJSON = withObject "MessageEmbedProviderResponse" $ \o ->
        MessageEmbedProviderResponse <$>
            o .: "name"
            <*> o .: "url"