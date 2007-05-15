
local f, warned = CreateFrame("Frame"), {}
f:RegisterEvent("DUEL_REQUESTED")
f:SetScript("OnEvent", function(self, event, name)
	HideUIPanel(StaticPopup1)
	CancelDuel()
	if not warned[name] then SendChatMessage("[tekNoDuel]: Bugger off sod!  Don't you have a flag to go steal?", "WHISPER", GetDefaultLanguage("player"), name) end
	warned[name] = true
end)

