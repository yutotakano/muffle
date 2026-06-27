{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.WelcomeMessageResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data WelcomeMessageResponse = WelcomeMessageResponse
    { authorIds :: [SnowflakeType]
    , message :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON WelcomeMessageResponse where
    parseJSON = withObject "WelcomeMessageResponse" $ \o ->
        WelcomeMessageResponse <$>
            o .: "author_ids"
            <*> o .: "message"