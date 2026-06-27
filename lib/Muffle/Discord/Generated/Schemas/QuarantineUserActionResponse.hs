{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.QuarantineUserActionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.QuarantineUserActionMetadataResponse
import Muffle.Discord.Generated.Schemas.AutomodActionType

data QuarantineUserActionResponse = QuarantineUserActionResponse
    { metadata :: QuarantineUserActionMetadataResponse
    , type' :: AutomodActionType
    }
    deriving (Show, Eq, Generic)

instance FromJSON QuarantineUserActionResponse where
    parseJSON = withObject "QuarantineUserActionResponse" $ \o ->
        QuarantineUserActionResponse <$>
            o .: "metadata"
            <*> o .: "type"