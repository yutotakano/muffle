{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.TextInputFormFieldResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.GuildMemberVerificationFormFieldType

data TextInputFormFieldResponse = TextInputFormFieldResponse
    { description :: String
    , fieldType :: GuildMemberVerificationFormFieldType
    , label :: String
    , placeholder :: String
    , required :: Bool
    , response :: String
    }
    deriving (Show, Eq, Generic)
