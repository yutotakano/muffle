{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.AuthorType where

import Data.Int (Int32, Int64)
import GHC.Generics


data AuthorType = AuthorTypeUser | AuthorTypeBot | AuthorTypeWebhook | AuthorTypeAUser | AuthorTypeABot | AuthorTypeAWebhook
    deriving (Show, Eq, Generic)
