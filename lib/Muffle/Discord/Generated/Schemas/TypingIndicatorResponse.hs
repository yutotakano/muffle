{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.TypingIndicatorResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data TypingIndicatorResponse = TypingIndicatorResponse
    deriving (Show, Eq, Generic)

instance FromJSON TypingIndicatorResponse where
    parseJSON = withObject "TypingIndicatorResponse" $ \_ -> pure TypingIndicatorResponse