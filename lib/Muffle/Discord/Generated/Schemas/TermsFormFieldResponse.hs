{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.TermsFormFieldResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.GuildMemberVerificationFormFieldType

data TermsFormFieldResponse = TermsFormFieldResponse
    { description :: String
    , fieldType :: GuildMemberVerificationFormFieldType
    , label :: String
    , required :: Bool
    , response :: Bool
    , values :: [String]
    }
    deriving (Show, Eq, Generic)
