{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.RichEmbedFooter where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data RichEmbedFooter = RichEmbedFooter
    { iconUrl :: Maybe (Maybe String)
    , text :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)

instance FromJSON RichEmbedFooter where
    parseJSON = withObject "RichEmbedFooter" $ \o ->
        RichEmbedFooter <$>
            o .: "icon_url"
            <*> o .: "text"