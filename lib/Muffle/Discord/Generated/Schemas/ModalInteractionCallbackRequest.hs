{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ModalInteractionCallbackRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ModalInteractionCallbackRequestData
import Muffle.Discord.Generated.Schemas.InteractionCallbackTypes

data ModalInteractionCallbackRequest = ModalInteractionCallbackRequest
    { data' :: ModalInteractionCallbackRequestData
    , type' :: InteractionCallbackTypes
    }
    deriving (Show, Eq, Generic)
