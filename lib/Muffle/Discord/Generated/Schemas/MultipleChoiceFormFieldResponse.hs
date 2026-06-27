{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MultipleChoiceFormFieldResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
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

instance FromJSON MultipleChoiceFormFieldResponse where
    parseJSON = withObject "MultipleChoiceFormFieldResponse" $ \o ->
        MultipleChoiceFormFieldResponse <$>
            o .: "choices"
            <*> o .: "description"
            <*> o .: "field_type"
            <*> o .: "label"
            <*> o .: "required"
            <*> o .: "response"