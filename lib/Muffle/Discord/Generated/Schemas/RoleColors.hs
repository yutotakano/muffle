{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.RoleColors where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data RoleColors = RoleColors
    { primaryColor :: Maybe (Maybe Integer)
    , secondaryColor :: Maybe (Maybe Integer)
    , tertiaryColor :: Maybe (Maybe Integer)
    }
    deriving (Show, Eq, Generic)

instance FromJSON RoleColors where
    parseJSON = withObject "RoleColors" $ \o ->
        RoleColors <$>
            o .: "primary_color"
            <*> o .: "secondary_color"
            <*> o .: "tertiary_color"