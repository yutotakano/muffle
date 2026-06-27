{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.EntityMetadataExternalResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data EntityMetadataExternalResponse = EntityMetadataExternalResponse
    { location :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON EntityMetadataExternalResponse where
    parseJSON = withObject "EntityMetadataExternalResponse" $ \o ->
        EntityMetadataExternalResponse <$>
            o .: "location"