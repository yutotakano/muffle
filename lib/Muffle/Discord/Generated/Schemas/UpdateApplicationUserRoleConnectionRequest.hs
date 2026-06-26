{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.UpdateApplicationUserRoleConnectionRequest where

import Data.Int (Int32, Int64)
import GHC.Generics


data UpdateApplicationUserRoleConnectionRequest = UpdateApplicationUserRoleConnectionRequest
    { metadata :: Maybe UpdateApplicationUserRoleConnectionRequestMetadataNullableInner
    , platformName :: Maybe (Maybe String)
    , platformUsername :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)
newtype UpdateApplicationUserRoleConnectionRequestMetadataNullableInner = UpdateApplicationUserRoleConnectionRequestMetadataNullableInner (Maybe UpdateApplicationUserRoleConnectionRequestMetadataNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data UpdateApplicationUserRoleConnectionRequestMetadataNullableInnerNullableInner = UpdateApplicationUserRoleConnectionRequestMetadataNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
