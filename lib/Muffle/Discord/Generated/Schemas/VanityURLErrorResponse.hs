{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.VanityURLErrorResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data VanityURLErrorResponse = VanityURLErrorResponse
    { code :: Int32
    , message :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON VanityURLErrorResponse where
    parseJSON = withObject "VanityURLErrorResponse" $ \o ->
        VanityURLErrorResponse <$>
            o .: "code"
            <*> o .: "message"