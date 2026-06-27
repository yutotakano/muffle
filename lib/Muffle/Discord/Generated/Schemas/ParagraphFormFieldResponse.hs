{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ParagraphFormFieldResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
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

instance FromJSON ParagraphFormFieldResponse where
    parseJSON = withObject "ParagraphFormFieldResponse" $ \o ->
        ParagraphFormFieldResponse <$>
            o .: "description"
            <*> o .: "field_type"
            <*> o .: "label"
            <*> o .: "placeholder"
            <*> o .: "required"
            <*> o .: "response"