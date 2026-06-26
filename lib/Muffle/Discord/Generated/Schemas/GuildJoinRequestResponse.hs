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
    { actionedByUser :: Maybe UserResponse
    , applicationStatus :: Maybe GuildJoinRequestApplicationStatus
    , createdAt :: String
    , formResponses :: [GuildJoinRequestResponseFormResponsesItem]
    , guildId :: SnowflakeType
    , id :: SnowflakeType
    , rejectionReason :: Maybe String
    , reviewedAt :: Maybe String
    , user :: Maybe UserResponse
    , userId :: SnowflakeType
    }
    deriving (Show, Eq, Generic)
data GuildJoinRequestResponseFormResponsesItem = GuildJoinRequestResponseFormResponsesItem0 MultipleChoiceFormFieldResponse | GuildJoinRequestResponseFormResponsesItem1 ParagraphFormFieldResponse | GuildJoinRequestResponseFormResponsesItem2 TermsFormFieldResponse | GuildJoinRequestResponseFormResponsesItem3 TextInputFormFieldResponse
    deriving (Show, Eq, Generic)
