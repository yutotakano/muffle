{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.WidgetActivity where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data WidgetActivity = WidgetActivity
    { name :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON WidgetActivity where
    parseJSON = withObject "WidgetActivity" $ \o ->
        WidgetActivity <$>
            o .: "name"