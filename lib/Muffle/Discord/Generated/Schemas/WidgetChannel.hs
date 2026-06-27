{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.WidgetChannel where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data WidgetChannel = WidgetChannel
    { id :: SnowflakeType
    , name :: String
    , position :: Int32
    }
    deriving (Show, Eq, Generic)

instance FromJSON WidgetChannel where
    parseJSON = withObject "WidgetChannel" $ \o ->
        WidgetChannel <$>
            o .: "id"
            <*> o .: "name"
            <*> o .: "position"