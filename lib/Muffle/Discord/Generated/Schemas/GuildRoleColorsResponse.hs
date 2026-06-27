{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildRoleColorsResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data GuildRoleColorsResponse = GuildRoleColorsResponse
    { primaryColor :: Int32
    , secondaryColor :: Maybe Int32
    , tertiaryColor :: Maybe Int32
    }
    deriving (Show, Eq, Generic)

instance FromJSON GuildRoleColorsResponse where
    parseJSON = withObject "GuildRoleColorsResponse" $ \o ->
        GuildRoleColorsResponse <$>
            o .: "primary_color"
            <*> o .: "secondary_color"
            <*> o .: "tertiary_color"