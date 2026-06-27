{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MessageReactionCountDetailsResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data MessageReactionCountDetailsResponse = MessageReactionCountDetailsResponse
    { burst :: Int32
    , normal :: Int32
    }
    deriving (Show, Eq, Generic)

instance FromJSON MessageReactionCountDetailsResponse where
    parseJSON = withObject "MessageReactionCountDetailsResponse" $ \o ->
        MessageReactionCountDetailsResponse <$>
            o .: "burst"
            <*> o .: "normal"