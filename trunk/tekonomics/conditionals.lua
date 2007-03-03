
TEKONOMICS_CONDITIONALS = {
	-- MERCHANT_SHOW
	AtMerchant = function() return MerchantFrame:IsVisible() end,

	-- CRAFT_SHOW
	CraftFrameOpen = function() return CraftFrame and CraftFrame:IsVisible() end,

	-- TRADE_SHOW
	TradeskillFrameOpen = function() return TradeSkillFrame and TradeSkillFrame:IsVisible() end,

	-- CRAFT_SHOW and TRADE_SHOW
	Crafting = function() return (CraftFrame and CraftFrame:IsVisible()) or (TradeSkillFrame and TradeSkillFrame:IsVisible()) end,

	-- UNIT_FACTION
	PvPFlagged = function() return UnitIsPVP("player") end,

	-- PARTY_MEMBERS_CHANGED
	InParty = function() return GetNumPartyMembers() > 0 or GetNumRaidMembers() > 0 end,

	-- RAID_ROSTER_UPDATE
	InRaid = function() return GetNumRaidMembers() > 0 end,

	-- PLAYER_UPDATE_RESTING
	IsResting = IsResting,

	-- PLAYER_UPDATE_RESTING
	IsNotResting = function() return not IsResting() end,

	-- MAIL_SHOW
	AtMailbox = function() return MailFrame:IsVisible() end,
}
