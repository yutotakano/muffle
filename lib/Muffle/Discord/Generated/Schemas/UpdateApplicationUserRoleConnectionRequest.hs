{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.UpdateApplicationUserRoleConnectionRequest where

import Data.Int (Int32, Int64)
import GHC.Generics


data UpdateApplicationUserRoleConnectionRequest = UpdateApplicationUserRoleConnectionRequest
    { metadata :: Maybe UpdateApplicationUserRoleConnectionRequestMetadataNullableInner
    , platformName :: Maybe String
    , platformUsername :: Maybe String
    }
    deriving (Show, Eq, Generic)
data UpdateApplicationUserRoleConnectionRequestMetadataNullableInner = UpdateApplicationUserRoleConnectionRequestMetadataNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
