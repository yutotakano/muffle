{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ActivitiesAttachmentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.AttachmentResponse

data ActivitiesAttachmentResponse = ActivitiesAttachmentResponse
    { attachment :: AttachmentResponse
    }
    deriving (Show, Eq, Generic)
