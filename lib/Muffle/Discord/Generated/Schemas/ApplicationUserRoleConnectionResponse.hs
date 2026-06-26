{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationUserRoleConnectionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data ApplicationUserRoleConnectionResponse = ApplicationUserRoleConnectionResponse
    { metadata :: Maybe ApplicationUserRoleConnectionResponseMetadataNullableInner
    , platformName :: Maybe String
    , platformUsername :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)
data ApplicationUserRoleConnectionResponseMetadataNullableInner = ApplicationUserRoleConnectionResponseMetadataNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
