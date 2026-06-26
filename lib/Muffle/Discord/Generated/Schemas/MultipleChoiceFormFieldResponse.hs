{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MultipleChoiceFormFieldResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.GuildMemberVerificationFormFieldType

data MultipleChoiceFormFieldResponse = MultipleChoiceFormFieldResponse
    { choices :: [String]
    , description :: String
    , fieldType :: GuildMemberVerificationFormFieldType
    , label :: String
    , required :: Bool
    , response :: Int32
    }
    deriving (Show, Eq, Generic)
