{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UnfurledMediaRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data UnfurledMediaRequest = UnfurledMediaRequest
    { url :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON UnfurledMediaRequest where
    parseJSON = withObject "UnfurledMediaRequest" $ \o ->
        UnfurledMediaRequest <$>
            o .: "url"