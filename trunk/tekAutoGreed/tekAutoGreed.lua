tekAutoGreed = {
	duos = {
		{"Icecrown", "Tekkub", "Rohona"},
	}	,
}

local orig = GroupLootFrame_OnShow
GroupLootFrame_OnShow = function (...)
	if not select(5, GetLootRollItemInfo(this.rollID)) and TreyIsGreedy:InDuo() then
		RollOnLoot(this.rollID, 2)
	end
	return orig(...)
end


function TreyIsGreedy:InDuo()
	if UnitExists("party2") or UnitExists("raid1") then return end

	for _,duo in pairs(self.duos) do
		if (GetRealmName() == duo[1] and ((UnitName("player") == duo[2] and UnitName("party1") == duo[3])
		or (UnitName("player") == duo[3] and UnitName("party1") == duo[2]))) then
			return true end
	end
end

