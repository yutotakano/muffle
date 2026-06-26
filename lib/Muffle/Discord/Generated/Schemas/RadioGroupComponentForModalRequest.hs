{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.RadioGroupComponentForModalRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.RadioGroupOptionForRequest
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data RadioGroupComponentForModalRequest = RadioGroupComponentForModalRequest
    { customId :: String
    , id :: Maybe (Maybe Int32)
    , options :: [RadioGroupOptionForRequest]
    , required :: Maybe (Maybe Bool)
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)
