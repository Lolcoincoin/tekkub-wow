

local tld = TheLowDownRegisterFrame
TheLowDownRegisterFrame = nil


local handlers = TotalRecallChatHandlers
TotalRecallChatHandlers = nil


local eventlists = {
	Guild = "CHAT_MSG_GUILD CHAT_MSG_OFFICER GUILD_MOTD",
	Whisper = "CHAT_MSG_WHISPER CHAT_MSG_WHISPER_INFORM",
	Say = "CHAT_MSG_SAY",
	System = "CHAT_MSG_SYSTEM",
	Loot = "CHAT_MSG_LOOT CHAT_MSG_MONEY",
}


local function Reparent(frame)
	frame:SetParent(OptionHouseOptionsFrame)
	frame:SetFrameStrata(OptionHouseOptionsFrame:GetFrameStrata())
	frame:SetFrameLevel(OptionHouseOptionsFrame:GetFrameLevel())
	frame:ClearAllPoints()
	frame:SetWidth(630)
	frame:SetHeight(305)
	frame:SetPoint("TOPLEFT", 190, -103)
	frame:Show()

	return frame
end


local function OnMouseWheel(frame, delta)
	if delta > 0 then
		if IsShiftKeyDown() then frame:ScrollToTop()
		else frame:ScrollUp() end
	elseif delta < 0 then
		if IsShiftKeyDown() then frame:ScrollToBottom()
		else frame:ScrollDown() end
	end
end


local function CreateScrollFrame()
	local f = CreateFrame("ScrollingMessageFrame")
	f:SetMaxLines(250)
	f:SetFontObject(ChatFontNormal)
	f:SetJustifyH("LEFT")
	f:SetFading(false)
	f:EnableMouseWheel(true)
	f:SetScript("OnMouseWheel", OnMouseWheel)
	f:SetScript("OnHide", f.ScrollToBottom)
	f:Hide()
	return f
end


local function OnEvent(frame, event, ...)
	handlers[event](frame, event, ...)
end


local function RegisterEvents(frame, ...)
	for i=1,select("#", ...) do
		frame:RegisterEvent((select(i, ...)))
	end
end


local OptionHouse = DongleStub("OptionHouse-1.0")
local _, title = GetAddOnInfo("TotalRecall")
local author, version = GetAddOnMetadata("TotalRecall", "Author"), GetAddOnMetadata("TotalRecall", "Version")
local oh = OptionHouse:RegisterAddOn("Total Recall", title, author, version)
for name,events in pairs(eventlists) do
	local f = CreateScrollFrame()
	tld(f, name)
	f:SetScript("OnEvent", OnEvent)
	RegisterEvents(f, string.split(" ", events))

	oh:RegisterCategory(name, function() return Reparent(f) end)
end

