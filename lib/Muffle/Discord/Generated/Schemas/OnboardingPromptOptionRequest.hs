{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.OnboardingPromptOptionRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data OnboardingPromptOptionRequest = OnboardingPromptOptionRequest
    { channelIds :: [SnowflakeType]
    , description :: Maybe String
    , emojiAnimated :: Maybe Bool
    , emojiId :: Maybe SnowflakeType
    , emojiName :: Maybe String
    , id :: Maybe SnowflakeType
    , roleIds :: [SnowflakeType]
    , title :: String
    }
    deriving (Show, Eq, Generic)
