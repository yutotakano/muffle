{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildJoinRequestResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.UserResponse
import Muffle.Discord.Generated.Schemas.GuildJoinRequestApplicationStatus
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.MultipleChoiceFormFieldResponse
import Muffle.Discord.Generated.Schemas.ParagraphFormFieldResponse
import Muffle.Discord.Generated.Schemas.TermsFormFieldResponse
import Muffle.Discord.Generated.Schemas.TextInputFormFieldResponse

data GuildJoinRequestResponse = GuildJoinRequestResponse
    { actionedByUser :: Maybe (Maybe UserResponse)
    , applicationStatus :: Maybe GuildJoinRequestApplicationStatus
    , createdAt :: String
    , formResponses :: Maybe GuildJoinRequestResponseFormResponsesNullableInner
    , guildId :: SnowflakeType
    , id :: SnowflakeType
    , rejectionReason :: Maybe String
    , reviewedAt :: Maybe String
    , user :: Maybe (Maybe UserResponse)
    , userId :: SnowflakeType
    }
    deriving (Show, Eq, Generic)

instance FromJSON GuildJoinRequestResponse where
    parseJSON = withObject "GuildJoinRequestResponse" $ \o ->
        GuildJoinRequestResponse <$>
            o .: "actioned_by_user"
            <*> o .: "application_status"
            <*> o .: "created_at"
            <*> o .: "form_responses"
            <*> o .: "guild_id"
            <*> o .: "id"
            <*> o .: "rejection_reason"
            <*> o .: "reviewed_at"
            <*> o .: "user"
            <*> o .: "user_id"

newtype GuildJoinRequestResponseFormResponsesNullableInner = GuildJoinRequestResponseFormResponsesNullableInner [GuildJoinRequestResponseFormResponsesNullableInnerItem]
    deriving (Show, Eq, Generic)

instance FromJSON GuildJoinRequestResponseFormResponsesNullableInner where
    parseJSON v = GuildJoinRequestResponseFormResponsesNullableInner <$> parseJSON v

data GuildJoinRequestResponseFormResponsesNullableInnerItem = GuildJoinRequestResponseFormResponsesNullableInnerItem0 MultipleChoiceFormFieldResponse | GuildJoinRequestResponseFormResponsesNullableInnerItem1 ParagraphFormFieldResponse | GuildJoinRequestResponseFormResponsesNullableInnerItem2 TermsFormFieldResponse | GuildJoinRequestResponseFormResponsesNullableInnerItem3 TextInputFormFieldResponse
    deriving (Show, Eq, Generic)

instance FromJSON GuildJoinRequestResponseFormResponsesNullableInnerItem where
    parseJSON v =
        GuildJoinRequestResponseFormResponsesNullableInnerItem0 <$> parseJSON v
            <|> GuildJoinRequestResponseFormResponsesNullableInnerItem1 <$> parseJSON v
            <|> GuildJoinRequestResponseFormResponsesNullableInnerItem2 <$> parseJSON v
            <|> GuildJoinRequestResponseFormResponsesNullableInnerItem3 <$> parseJSON v