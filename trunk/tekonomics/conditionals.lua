
TEKONOMICS_EVENTS = {
	AtMerchant = "MERCHANT_SHOW",
	CraftFrameOpen = "CRAFT_SHOW",
	TradeskillFrameOpen = "TRADE_SHOW",
	CraftFrameOpen = "CRAFT_SHOW",
	PvPFlagged = "UNIT_FACTION",
	InParty = "PARTY_MEMBERS_CHANGED",
	InRaid = "RAID_ROSTER_UPDATE",
	IsResting = {"PLAYER_UPDATE_RESTING", "PLAYER_LOGIN"},
	IsNotResting = {"PLAYER_UPDATE_RESTING", "PLAYER_LOGIN"},
	AtMailbox = "MAIL_SHOW",
}

TEKONOMICS_CONDITIONALS = {
	AtMerchant = function() return MerchantFrame:IsVisible() end,
	CraftFrameOpen = function() return CraftFrame and CraftFrame:IsVisible() end,
	TradeskillFrameOpen = function() return TradeSkillFrame and TradeSkillFrame:IsVisible() end,
	CraftFrameOpen = function() return CraftFrame and CraftFrame:IsVisible() end,
	PvPFlagged = function() return UnitIsPVP("player") end,
	InParty = function() return GetNumPartyMembers() > 0 or GetNumRaidMembers() > 0 end,
	InRaid = function() return GetNumRaidMembers() > 0 end,
	IsResting = IsResting,
	IsNotResting = function() return not IsResting() end,
	AtMailbox = function() return MailFrame:IsVisible() end,
}
