{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildFeatures where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data GuildFeatures = GuildFeaturesANIMATEDBANNER | GuildFeaturesANIMATEDICON | GuildFeaturesAPPLICATIONCOMMANDPERMISSIONSV2 | GuildFeaturesAUTOMODERATION | GuildFeaturesBANNER | GuildFeaturesCOMMUNITY | GuildFeaturesCREATORMONETIZABLEPROVISIONAL | GuildFeaturesCREATORSTOREPAGE | GuildFeaturesDEVELOPERSUPPORTSERVER | GuildFeaturesDISCOVERABLE | GuildFeaturesFEATURABLE | GuildFeaturesINVITESDISABLED | GuildFeaturesINVITESPLASH | GuildFeaturesMEMBERVERIFICATIONGATEENABLED | GuildFeaturesMORESTICKERS | GuildFeaturesNEWS | GuildFeaturesPARTNERED | GuildFeaturesPREVIEWENABLED | GuildFeaturesRAIDALERTSDISABLED | GuildFeaturesPRUNEREQUIRESADMIN | GuildFeaturesROLEICONS | GuildFeaturesROLESUBSCRIPTIONSAVAILABLEFORPURCHASE | GuildFeaturesROLESUBSCRIPTIONSENABLED | GuildFeaturesTICKETEDEVENTSENABLED | GuildFeaturesVANITYURL | GuildFeaturesVERIFIED | GuildFeaturesVIPREGIONS | GuildFeaturesWELCOMESCREENENABLED | GuildFeaturesOFFICIALGAMEGUILD
    deriving (Show, Eq, Generic)

instance FromJSON GuildFeatures where
    parseJSON v = case v of
        "ANIMATED_BANNER" -> pure GuildFeaturesANIMATEDBANNER
        "ANIMATED_ICON" -> pure GuildFeaturesANIMATEDICON
        "APPLICATION_COMMAND_PERMISSIONS_V2" -> pure GuildFeaturesAPPLICATIONCOMMANDPERMISSIONSV2
        "AUTO_MODERATION" -> pure GuildFeaturesAUTOMODERATION
        "BANNER" -> pure GuildFeaturesBANNER
        "COMMUNITY" -> pure GuildFeaturesCOMMUNITY
        "CREATOR_MONETIZABLE_PROVISIONAL" -> pure GuildFeaturesCREATORMONETIZABLEPROVISIONAL
        "CREATOR_STORE_PAGE" -> pure GuildFeaturesCREATORSTOREPAGE
        "DEVELOPER_SUPPORT_SERVER" -> pure GuildFeaturesDEVELOPERSUPPORTSERVER
        "DISCOVERABLE" -> pure GuildFeaturesDISCOVERABLE
        "FEATURABLE" -> pure GuildFeaturesFEATURABLE
        "INVITES_DISABLED" -> pure GuildFeaturesINVITESDISABLED
        "INVITE_SPLASH" -> pure GuildFeaturesINVITESPLASH
        "MEMBER_VERIFICATION_GATE_ENABLED" -> pure GuildFeaturesMEMBERVERIFICATIONGATEENABLED
        "MORE_STICKERS" -> pure GuildFeaturesMORESTICKERS
        "NEWS" -> pure GuildFeaturesNEWS
        "PARTNERED" -> pure GuildFeaturesPARTNERED
        "PREVIEW_ENABLED" -> pure GuildFeaturesPREVIEWENABLED
        "RAID_ALERTS_DISABLED" -> pure GuildFeaturesRAIDALERTSDISABLED
        "PRUNE_REQUIRES_ADMIN" -> pure GuildFeaturesPRUNEREQUIRESADMIN
        "ROLE_ICONS" -> pure GuildFeaturesROLEICONS
        "ROLE_SUBSCRIPTIONS_AVAILABLE_FOR_PURCHASE" -> pure GuildFeaturesROLESUBSCRIPTIONSAVAILABLEFORPURCHASE
        "ROLE_SUBSCRIPTIONS_ENABLED" -> pure GuildFeaturesROLESUBSCRIPTIONSENABLED
        "TICKETED_EVENTS_ENABLED" -> pure GuildFeaturesTICKETEDEVENTSENABLED
        "VANITY_URL" -> pure GuildFeaturesVANITYURL
        "VERIFIED" -> pure GuildFeaturesVERIFIED
        "VIP_REGIONS" -> pure GuildFeaturesVIPREGIONS
        "WELCOME_SCREEN_ENABLED" -> pure GuildFeaturesWELCOMESCREENENABLED
        "OFFICIAL_GAME_GUILD" -> pure GuildFeaturesOFFICIALGAMEGUILD
        _ -> fail "Expected one of the constants in the oneOf schema"