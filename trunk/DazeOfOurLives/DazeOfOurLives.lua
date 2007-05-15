
local L = {
	Dazed = "Dazed",
	["Aspect of the Cheetah"] = "Aspect of the Cheetah",
	["Aspect of the Pack"] = "Aspect of the Pack"
}


local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_AURAS_CHANGED")
frame:SetScript("OnEvent", function(self, event)
	local aspect = GetPlayerBuffName(L["Aspect of the Cheetah"]) or GetPlayerBuffName(L["Aspect of the Pack"]
	if aspect and GetPlayerBuffName(L.Dazed) then CancelPlayerBuff(aspect) end
end)

