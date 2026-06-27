{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ListApplicationEmojisResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.EmojiResponse

data ListApplicationEmojisResponse = ListApplicationEmojisResponse
    { items :: [EmojiResponse]
    }
    deriving (Show, Eq, Generic)

instance FromJSON ListApplicationEmojisResponse where
    parseJSON = withObject "ListApplicationEmojisResponse" $ \o ->
        ListApplicationEmojisResponse <$>
            o .: "items"