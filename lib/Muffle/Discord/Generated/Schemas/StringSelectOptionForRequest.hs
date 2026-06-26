{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.StringSelectOptionForRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ComponentEmojiForRequest

data StringSelectOptionForRequest = StringSelectOptionForRequest
    { default' :: Maybe Bool
    , description :: Maybe String
    , emoji :: Maybe ComponentEmojiForRequest
    , label :: String
    , value :: String
    }
    deriving (Show, Eq, Generic)
