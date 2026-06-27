{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ModalInteractionCallbackRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ModalInteractionCallbackRequestData
import Muffle.Discord.Generated.Schemas.InteractionCallbackTypes

data ModalInteractionCallbackRequest = ModalInteractionCallbackRequest
    { data' :: ModalInteractionCallbackRequestData
    , type' :: InteractionCallbackTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON ModalInteractionCallbackRequest where
    parseJSON = withObject "ModalInteractionCallbackRequest" $ \o ->
        ModalInteractionCallbackRequest <$>
            o .: "data"
            <*> o .: "type"