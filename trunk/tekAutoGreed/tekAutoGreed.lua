local duos = {
	{"Icecrown", "Tekkub", "Rohona"},
}


local function InDuo()
	if UnitExists("party2") or UnitExists("raid1") then return end

	for _,duo in pairs(duos) do
		if (GetRealmName() == duo[1] and ((UnitName("player") == duo[2] and UnitName("party1") == duo[3])
		or (UnitName("player") == duo[3] and UnitName("party1") == duo[2]))) then
			return true end
	end
end


local orig = GroupLootFrame_OnShow
GroupLootFrame_OnShow = function (...)
	if not select(5, GetLootRollItemInfo(this.rollID)) and InDuo() then
		RollOnLoot(this.rollID, 2)
	end
	return orig(...)
end



