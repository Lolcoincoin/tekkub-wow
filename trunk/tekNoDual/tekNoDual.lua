

local function IsFriend(name)
	for i=1,GetNumFriends() do
		if GetFriendInfo(i) == name then return true end
	end

	if not IsInGuild() then return end

	for i=1,GetNumGuildMembers() do
		if GetGuildRosterInfo(i) == name then return true end
	end
end


local function CancelDual(frame, event, unit)
	if IsFriend(unit) then return end

	HideUIPanel(StaticPopup1)
	CancelDuel()
	SendChatMessage("[tekNoDual]: This player does not accept random duals.", "WHISPER", GetDefaultLanguage("player"), unit)
end


local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_LOGIN")
f:SetScript("OnEvent", function(frame)
	if IsInGuild() then GuildRoster() end
	if GetNumFriends() > 0 then ShowFriends() end

	frame:UnregisterEvent("PLAYER_LOGIN")
	frame:RegisterEvent("DUEL_REQUESTED")
	frame:SetScript("OnEvent", CancelDual)
end)

