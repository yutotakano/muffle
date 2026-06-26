{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.RichEmbedAuthor where

import Data.Int (Int32, Int64)
import GHC.Generics


data RichEmbedAuthor = RichEmbedAuthor
    { iconUrl :: Maybe String
    , name :: Maybe String
    , url :: Maybe String
    }
    deriving (Show, Eq, Generic)
