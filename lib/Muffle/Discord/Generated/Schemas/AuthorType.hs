{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.AuthorType where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data AuthorType = AuthorTypeUser | AuthorTypeBot | AuthorTypeWebhook | AuthorTypeAUser | AuthorTypeABot | AuthorTypeAWebhook
    deriving (Show, Eq, Generic)

instance FromJSON AuthorType where
    parseJSON v = case v of
        "user" -> pure AuthorTypeUser
        "bot" -> pure AuthorTypeBot
        "webhook" -> pure AuthorTypeWebhook
        "-user" -> pure AuthorTypeAUser
        "-bot" -> pure AuthorTypeABot
        "-webhook" -> pure AuthorTypeAWebhook
        _ -> fail "Expected one of the constants in the oneOf schema"