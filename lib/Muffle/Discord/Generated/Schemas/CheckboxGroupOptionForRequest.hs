{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.CheckboxGroupOptionForRequest where

import Data.Int (Int32, Int64)
import GHC.Generics


data CheckboxGroupOptionForRequest = CheckboxGroupOptionForRequest
    { default' :: Maybe (Maybe Bool)
    , description :: Maybe (Maybe String)
    , label :: String
    , value :: String
    }
    deriving (Show, Eq, Generic)
