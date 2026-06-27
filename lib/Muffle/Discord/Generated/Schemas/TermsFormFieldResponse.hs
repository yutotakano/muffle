{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.TermsFormFieldResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
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

instance FromJSON TermsFormFieldResponse where
    parseJSON = withObject "TermsFormFieldResponse" $ \o ->
        TermsFormFieldResponse <$>
            o .: "description"
            <*> o .: "field_type"
            <*> o .: "label"
            <*> o .: "required"
            <*> o .: "response"
            <*> o .: "values"