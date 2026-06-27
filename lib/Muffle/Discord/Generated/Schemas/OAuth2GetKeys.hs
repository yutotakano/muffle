{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.OAuth2GetKeys where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.OAuth2Key

data OAuth2GetKeys = OAuth2GetKeys
    { keys :: [OAuth2Key]
    }
    deriving (Show, Eq, Generic)

instance FromJSON OAuth2GetKeys where
    parseJSON = withObject "OAuth2GetKeys" $ \o ->
        OAuth2GetKeys <$>
            o .: "keys"