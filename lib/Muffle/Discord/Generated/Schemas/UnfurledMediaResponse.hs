{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.UnfurledMediaResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data UnfurledMediaResponse = UnfurledMediaResponse
    { attachmentId :: SnowflakeType
    , contentType :: Maybe String
    , height :: Maybe Int32
    , id :: SnowflakeType
    , proxyUrl :: String
    , url :: String
    , width :: Maybe Int32
    }
    deriving (Show, Eq, Generic)
