{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.QuarantineUserAction where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.QuarantineUserActionMetadata
import Muffle.Discord.Generated.Schemas.AutomodActionType

data QuarantineUserAction = QuarantineUserAction
    { metadata :: Maybe (Maybe QuarantineUserActionMetadata)
    , type' :: AutomodActionType
    }
    deriving (Show, Eq, Generic)

instance FromJSON QuarantineUserAction where
    parseJSON = withObject "QuarantineUserAction" $ \o ->
        QuarantineUserAction <$>
            o .: "metadata"
            <*> o .: "type"