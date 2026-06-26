{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ModalInteractionCallbackRequestData where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ActionRowComponentForModalRequest
import Muffle.Discord.Generated.Schemas.LabelComponentForModalRequest
import Muffle.Discord.Generated.Schemas.TextDisplayComponentForModalRequest

data ModalInteractionCallbackRequestData = ModalInteractionCallbackRequestData
    { components :: [ModalInteractionCallbackRequestDataComponentsItem]
    , customId :: String
    , title :: String
    }
    deriving (Show, Eq, Generic)
data ModalInteractionCallbackRequestDataComponentsItem = ModalInteractionCallbackRequestDataComponentsItem0 ActionRowComponentForModalRequest | ModalInteractionCallbackRequestDataComponentsItem1 LabelComponentForModalRequest | ModalInteractionCallbackRequestDataComponentsItem2 TextDisplayComponentForModalRequest
    deriving (Show, Eq, Generic)
