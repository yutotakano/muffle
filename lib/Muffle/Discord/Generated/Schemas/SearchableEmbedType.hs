{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.SearchableEmbedType where

import Data.Int (Int32, Int64)
import GHC.Generics


data SearchableEmbedType = SearchableEmbedTypeImage | SearchableEmbedTypeVideo | SearchableEmbedTypeGif | SearchableEmbedTypeSound | SearchableEmbedTypeArticle
    deriving (Show, Eq, Generic)
