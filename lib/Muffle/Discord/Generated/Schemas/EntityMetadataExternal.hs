{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.EntityMetadataExternal where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data EntityMetadataExternal = EntityMetadataExternal
    { location :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON EntityMetadataExternal where
    parseJSON = withObject "EntityMetadataExternal" $ \o ->
        EntityMetadataExternal <$>
            o .: "location"