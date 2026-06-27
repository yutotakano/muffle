{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UnfurledMediaRequestWithAttachmentReferenceRequired where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data UnfurledMediaRequestWithAttachmentReferenceRequired = UnfurledMediaRequestWithAttachmentReferenceRequired
    { url :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON UnfurledMediaRequestWithAttachmentReferenceRequired where
    parseJSON = withObject "UnfurledMediaRequestWithAttachmentReferenceRequired" $ \o ->
        UnfurledMediaRequestWithAttachmentReferenceRequired <$>
            o .: "url"