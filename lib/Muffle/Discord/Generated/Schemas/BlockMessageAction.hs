{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.BlockMessageAction where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.BlockMessageActionMetadata
import Muffle.Discord.Generated.Schemas.AutomodActionType

data BlockMessageAction = BlockMessageAction
    { metadata :: Maybe (Maybe BlockMessageActionMetadata)
    , type' :: AutomodActionType
    }
    deriving (Show, Eq, Generic)

instance FromJSON BlockMessageAction where
    parseJSON = withObject "BlockMessageAction" $ \o ->
        BlockMessageAction <$>
            o .: "metadata"
            <*> o .: "type"