{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MultipleChoiceFormFieldResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.GuildMemberVerificationFormFieldType

data MultipleChoiceFormFieldResponse = MultipleChoiceFormFieldResponse
    { choices :: [String]
    , description :: Maybe String
    , fieldType :: GuildMemberVerificationFormFieldType
    , label :: Maybe String
    , required :: Maybe Bool
    , response :: Maybe Int32
    }
    deriving (Show, Eq, Generic)
