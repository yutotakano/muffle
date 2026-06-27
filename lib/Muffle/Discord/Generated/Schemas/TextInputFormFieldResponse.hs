{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.TextInputFormFieldResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.GuildMemberVerificationFormFieldType

data TextInputFormFieldResponse = TextInputFormFieldResponse
    { description :: Maybe String
    , fieldType :: GuildMemberVerificationFormFieldType
    , label :: Maybe String
    , placeholder :: Maybe String
    , required :: Maybe Bool
    , response :: Maybe String
    }
    deriving (Show, Eq, Generic)

instance FromJSON TextInputFormFieldResponse where
    parseJSON = withObject "TextInputFormFieldResponse" $ \o ->
        TextInputFormFieldResponse <$>
            o .: "description"
            <*> o .: "field_type"
            <*> o .: "label"
            <*> o .: "placeholder"
            <*> o .: "required"
            <*> o .: "response"