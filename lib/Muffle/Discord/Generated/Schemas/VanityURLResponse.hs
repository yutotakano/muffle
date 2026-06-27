{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.VanityURLResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.VanityURLErrorResponse

data VanityURLResponse = VanityURLResponse
    { code :: Maybe String
    , error :: Maybe (Maybe VanityURLErrorResponse)
    , uses :: Int32
    }
    deriving (Show, Eq, Generic)

instance FromJSON VanityURLResponse where
    parseJSON = withObject "VanityURLResponse" $ \o ->
        VanityURLResponse <$>
            o .: "code"
            <*> o .: "error"
            <*> o .: "uses"