{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ParagraphFormFieldResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.GuildMemberVerificationFormFieldType

data ParagraphFormFieldResponse = ParagraphFormFieldResponse
    { description :: Maybe String
    , fieldType :: GuildMemberVerificationFormFieldType
    , label :: Maybe String
    , placeholder :: Maybe String
    , required :: Maybe Bool
    , response :: Maybe String
    }
    deriving (Show, Eq, Generic)
