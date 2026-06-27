{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.EmbeddedActivityLocationKind where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data EmbeddedActivityLocationKind = EmbeddedActivityLocationKindGc | EmbeddedActivityLocationKindPc | EmbeddedActivityLocationKindParty
    deriving (Show, Eq, Generic)

instance FromJSON EmbeddedActivityLocationKind where
    parseJSON v = case v of
        "gc" -> pure EmbeddedActivityLocationKindGc
        "pc" -> pure EmbeddedActivityLocationKindPc
        "party" -> pure EmbeddedActivityLocationKindParty
        _ -> fail "Expected one of the constants in the oneOf schema"