{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ConnectedAccountProviders where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data ConnectedAccountProviders = ConnectedAccountProvidersBattlenet | ConnectedAccountProvidersBluesky | ConnectedAccountProvidersBungie | ConnectedAccountProvidersEbay | ConnectedAccountProvidersEpicgames | ConnectedAccountProvidersFacebook | ConnectedAccountProvidersGithub | ConnectedAccountProvidersInstagram | ConnectedAccountProvidersMastodon | ConnectedAccountProvidersLeagueoflegends | ConnectedAccountProvidersPaypal | ConnectedAccountProvidersPlaystation | ConnectedAccountProvidersReddit | ConnectedAccountProvidersRiotgames | ConnectedAccountProvidersRoblox | ConnectedAccountProvidersSkype | ConnectedAccountProvidersSpotify | ConnectedAccountProvidersSteam | ConnectedAccountProvidersTiktok | ConnectedAccountProvidersTwitch | ConnectedAccountProvidersTwitter | ConnectedAccountProvidersXbox | ConnectedAccountProvidersYoutube | ConnectedAccountProvidersDomain
    deriving (Show, Eq, Generic)

instance FromJSON ConnectedAccountProviders where
    parseJSON v = case v of
        "battlenet" -> pure ConnectedAccountProvidersBattlenet
        "bluesky" -> pure ConnectedAccountProvidersBluesky
        "bungie" -> pure ConnectedAccountProvidersBungie
        "ebay" -> pure ConnectedAccountProvidersEbay
        "epicgames" -> pure ConnectedAccountProvidersEpicgames
        "facebook" -> pure ConnectedAccountProvidersFacebook
        "github" -> pure ConnectedAccountProvidersGithub
        "instagram" -> pure ConnectedAccountProvidersInstagram
        "mastodon" -> pure ConnectedAccountProvidersMastodon
        "leagueoflegends" -> pure ConnectedAccountProvidersLeagueoflegends
        "paypal" -> pure ConnectedAccountProvidersPaypal
        "playstation" -> pure ConnectedAccountProvidersPlaystation
        "reddit" -> pure ConnectedAccountProvidersReddit
        "riotgames" -> pure ConnectedAccountProvidersRiotgames
        "roblox" -> pure ConnectedAccountProvidersRoblox
        "skype" -> pure ConnectedAccountProvidersSkype
        "spotify" -> pure ConnectedAccountProvidersSpotify
        "steam" -> pure ConnectedAccountProvidersSteam
        "tiktok" -> pure ConnectedAccountProvidersTiktok
        "twitch" -> pure ConnectedAccountProvidersTwitch
        "twitter" -> pure ConnectedAccountProvidersTwitter
        "xbox" -> pure ConnectedAccountProvidersXbox
        "youtube" -> pure ConnectedAccountProvidersYoutube
        "domain" -> pure ConnectedAccountProvidersDomain
        _ -> fail "Expected one of the constants in the oneOf schema"