{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.EmojiResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.UserResponse

data EmojiResponse = EmojiResponse
    { animated :: Bool
    , available :: Bool
    , id :: SnowflakeType
    , managed :: Bool
    , name :: String
    , requireColons :: Bool
    , roles :: [SnowflakeType]
    , user :: Maybe UserResponse
    }
    deriving (Show, Eq, Generic)

instance FromJSON EmojiResponse where
    parseJSON = withObject "EmojiResponse" $ \o ->
        EmojiResponse <$>
            o .: "animated"
            <*> o .: "available"
            <*> o .: "id"
            <*> o .: "managed"
            <*> o .: "name"
            <*> o .: "require_colons"
            <*> o .: "roles"
            <*> o .: "user"