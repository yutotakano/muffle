{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildTemplateRoleColorsResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data GuildTemplateRoleColorsResponse = GuildTemplateRoleColorsResponse
    { primaryColor :: Int32
    , secondaryColor :: Maybe Int32
    , tertiaryColor :: Maybe Int32
    }
    deriving (Show, Eq, Generic)

instance FromJSON GuildTemplateRoleColorsResponse where
    parseJSON = withObject "GuildTemplateRoleColorsResponse" $ \o ->
        GuildTemplateRoleColorsResponse <$>
            o .: "primary_color"
            <*> o .: "secondary_color"
            <*> o .: "tertiary_color"