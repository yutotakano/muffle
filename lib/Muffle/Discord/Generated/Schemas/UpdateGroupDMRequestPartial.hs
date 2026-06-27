{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UpdateGroupDMRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data UpdateGroupDMRequestPartial = UpdateGroupDMRequestPartial
    { icon :: Maybe (Maybe String)
    , name :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)

instance FromJSON UpdateGroupDMRequestPartial where
    parseJSON = withObject "UpdateGroupDMRequestPartial" $ \o ->
        UpdateGroupDMRequestPartial <$>
            o .: "icon"
            <*> o .: "name"