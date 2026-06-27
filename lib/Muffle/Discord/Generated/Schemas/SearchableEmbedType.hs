{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.SearchableEmbedType where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data SearchableEmbedType = SearchableEmbedTypeImage | SearchableEmbedTypeVideo | SearchableEmbedTypeGif | SearchableEmbedTypeSound | SearchableEmbedTypeArticle
    deriving (Show, Eq, Generic)

instance FromJSON SearchableEmbedType where
    parseJSON v = case v of
        "image" -> pure SearchableEmbedTypeImage
        "video" -> pure SearchableEmbedTypeVideo
        "gif" -> pure SearchableEmbedTypeGif
        "sound" -> pure SearchableEmbedTypeSound
        "article" -> pure SearchableEmbedTypeArticle
        _ -> fail "Expected one of the constants in the oneOf schema"