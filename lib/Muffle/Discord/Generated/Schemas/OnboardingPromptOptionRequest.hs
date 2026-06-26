{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.OnboardingPromptOptionRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data OnboardingPromptOptionRequest = OnboardingPromptOptionRequest
    { channelIds :: Maybe [SnowflakeType]
    , description :: Maybe (Maybe String)
    , emojiAnimated :: Maybe (Maybe Bool)
    , emojiId :: Maybe (Maybe SnowflakeType)
    , emojiName :: Maybe (Maybe String)
    , id :: Maybe (Maybe SnowflakeType)
    , roleIds :: Maybe [SnowflakeType]
    , title :: String
    }
    deriving (Show, Eq, Generic)
