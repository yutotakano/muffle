{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildTemplateRoleColorsResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data GuildTemplateRoleColorsResponse = GuildTemplateRoleColorsResponse
    { primaryColor :: Int32
    , secondaryColor :: Maybe Int32
    , tertiaryColor :: Maybe Int32
    }
    deriving (Show, Eq, Generic)
