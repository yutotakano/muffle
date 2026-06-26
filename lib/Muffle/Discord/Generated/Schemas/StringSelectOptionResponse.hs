{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.StringSelectOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ComponentEmojiResponse

data StringSelectOptionResponse = StringSelectOptionResponse
    { default' :: Bool
    , description :: String
    , emoji :: ComponentEmojiResponse
    , label :: String
    , value :: String
    }
    deriving (Show, Eq, Generic)
