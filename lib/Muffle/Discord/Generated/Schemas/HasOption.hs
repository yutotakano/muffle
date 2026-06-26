{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.HasOption where

import Data.Int (Int32, Int64)
import GHC.Generics


data HasOption = HasOptionLink | HasOptionEmbed | HasOptionFile | HasOptionImage | HasOptionVideo | HasOptionSound | HasOptionSticker | HasOptionPoll | HasOptionSnapshot | HasOptionALink | HasOptionAEmbed | HasOptionAFile | HasOptionAImage | HasOptionAVideo | HasOptionASound | HasOptionASticker | HasOptionAPoll | HasOptionASnapshot
    deriving (Show, Eq, Generic)
