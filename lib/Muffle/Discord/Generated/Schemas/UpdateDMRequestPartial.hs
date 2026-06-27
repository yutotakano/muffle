{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UpdateDMRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data UpdateDMRequestPartial = UpdateDMRequestPartial
    { name :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)

instance FromJSON UpdateDMRequestPartial where
    parseJSON = withObject "UpdateDMRequestPartial" $ \o ->
        UpdateDMRequestPartial <$>
            o .: "name"