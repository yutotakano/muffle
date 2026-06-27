{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ActivitiesAttachmentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.AttachmentResponse

data ActivitiesAttachmentResponse = ActivitiesAttachmentResponse
    { attachment :: AttachmentResponse
    }
    deriving (Show, Eq, Generic)

instance FromJSON ActivitiesAttachmentResponse where
    parseJSON = withObject "ActivitiesAttachmentResponse" $ \o ->
        ActivitiesAttachmentResponse <$>
            o .: "attachment"