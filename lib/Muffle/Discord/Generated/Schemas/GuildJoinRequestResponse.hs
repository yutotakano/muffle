{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildJoinRequestResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
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
newtype GuildJoinRequestResponseFormResponsesNullableInner = GuildJoinRequestResponseFormResponsesNullableInner [GuildJoinRequestResponseFormResponsesNullableInnerItem]
    deriving (Show, Eq, Generic)
data GuildJoinRequestResponseFormResponsesNullableInnerItem = GuildJoinRequestResponseFormResponsesNullableInnerItem0 MultipleChoiceFormFieldResponse | GuildJoinRequestResponseFormResponsesNullableInnerItem1 ParagraphFormFieldResponse | GuildJoinRequestResponseFormResponsesNullableInnerItem2 TermsFormFieldResponse | GuildJoinRequestResponseFormResponsesNullableInnerItem3 TextInputFormFieldResponse
    deriving (Show, Eq, Generic)
