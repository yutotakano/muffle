{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.TermsFormFieldResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.GuildMemberVerificationFormFieldType

data TermsFormFieldResponse = TermsFormFieldResponse
    { description :: Maybe String
    , fieldType :: GuildMemberVerificationFormFieldType
    , label :: Maybe String
    , required :: Maybe Bool
    , response :: Maybe Bool
    , values :: [String]
    }
    deriving (Show, Eq, Generic)
