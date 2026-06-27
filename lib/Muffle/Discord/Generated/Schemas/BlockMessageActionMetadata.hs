{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.BlockMessageActionMetadata where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data BlockMessageActionMetadata = BlockMessageActionMetadata
    { customMessage :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)

instance FromJSON BlockMessageActionMetadata where
    parseJSON = withObject "BlockMessageActionMetadata" $ \o ->
        BlockMessageActionMetadata <$>
            o .: "custom_message"