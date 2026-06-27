{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.BotAccountPatchRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data BotAccountPatchRequest = BotAccountPatchRequest
    { avatar :: Maybe (Maybe String)
    , banner :: Maybe (Maybe String)
    , username :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON BotAccountPatchRequest where
    parseJSON = withObject "BotAccountPatchRequest" $ \o ->
        BotAccountPatchRequest <$>
            o .: "avatar"
            <*> o .: "banner"
            <*> o .: "username"