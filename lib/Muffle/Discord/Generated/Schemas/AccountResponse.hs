{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.AccountResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data AccountResponse = AccountResponse
    { id :: String
    , name :: Maybe String
    }
    deriving (Show, Eq, Generic)
