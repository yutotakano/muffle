{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ForumTagResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data ForumTagResponse = ForumTagResponse
    { emojiId :: Maybe SnowflakeType
    , emojiName :: Maybe String
    , id :: SnowflakeType
    , moderated :: Bool
    , name :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON ForumTagResponse where
    parseJSON = withObject "ForumTagResponse" $ \o ->
        ForumTagResponse <$>
            o .: "emoji_id"
            <*> o .: "emoji_name"
            <*> o .: "id"
            <*> o .: "moderated"
            <*> o .: "name"