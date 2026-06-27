{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.BlockMessageActionMetadataResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data BlockMessageActionMetadataResponse = BlockMessageActionMetadataResponse
    { customMessage :: Maybe String
    }
    deriving (Show, Eq, Generic)

instance FromJSON BlockMessageActionMetadataResponse where
    parseJSON = withObject "BlockMessageActionMetadataResponse" $ \o ->
        BlockMessageActionMetadataResponse <$>
            o .: "custom_message"