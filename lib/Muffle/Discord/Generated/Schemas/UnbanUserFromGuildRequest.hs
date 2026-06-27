{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UnbanUserFromGuildRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data UnbanUserFromGuildRequest = UnbanUserFromGuildRequest
    deriving (Show, Eq, Generic)

instance FromJSON UnbanUserFromGuildRequest where
    parseJSON = withObject "UnbanUserFromGuildRequest" $ \_ -> pure UnbanUserFromGuildRequest