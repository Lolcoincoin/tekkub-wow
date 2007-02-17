local f = CreateFrame("Frame")
f:RegisterEvent("CHAT_MSG_ADDON")
f:SetScript("OnEvent", function(frame, event, id, message, channel, author)
	if id == "KLHTM" and message == "versionquery" then
		SendAddonMessage("KLHTM", "versionresponse 19.6", channel)
	end
end)