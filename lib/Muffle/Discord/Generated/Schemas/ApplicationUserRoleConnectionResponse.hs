{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationUserRoleConnectionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data ApplicationUserRoleConnectionResponse = ApplicationUserRoleConnectionResponse
    { metadata :: ApplicationUserRoleConnectionResponseMetadata
    , platformName :: String
    , platformUsername :: Maybe String
    }
    deriving (Show, Eq, Generic)
data ApplicationUserRoleConnectionResponseMetadata = ApplicationUserRoleConnectionResponseMetadata
    { 
    }
    deriving (Show, Eq, Generic)
