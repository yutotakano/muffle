{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.BlockMessageActionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.BlockMessageActionMetadataResponse
import Muffle.Discord.Generated.Schemas.AutomodActionType

data BlockMessageActionResponse = BlockMessageActionResponse
    { metadata :: BlockMessageActionMetadataResponse
    , type' :: AutomodActionType
    }
    deriving (Show, Eq, Generic)

instance FromJSON BlockMessageActionResponse where
    parseJSON = withObject "BlockMessageActionResponse" $ \o ->
        BlockMessageActionResponse <$>
            o .: "metadata"
            <*> o .: "type"