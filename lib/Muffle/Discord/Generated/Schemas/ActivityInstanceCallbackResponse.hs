{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ActivityInstanceCallbackResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data ActivityInstanceCallbackResponse = ActivityInstanceCallbackResponse
    { id :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON ActivityInstanceCallbackResponse where
    parseJSON = withObject "ActivityInstanceCallbackResponse" $ \o ->
        ActivityInstanceCallbackResponse <$>
            o .: "id"