

--~ BossBlock = AceLibrary("AceAddon-2.0"):new("AceHook-2.0", "AceEvent-2.0", "AceConsole-2.0", "AceDB-2.0")
--~ BossBlock:RegisterDB("BossBlockDB")
--~~ BossBlock.cmdtable = {type = "group", args = {}}
--~~ BossBlock:RegisterChatCommand({"/bossblock"}, BigWigs.cmdtable)

local showtells = false
local showraid = true
local showraidsay = true
local showraidwarn = true

local raidchans = {
	CHAT_MSG_RAID = true,
	CHAT_MSG_RAID_WARNING = true,
	CHAT_MSG_RAID_LEADER = true,
}
local blockstrings = {
	["YOU HAVE THE PLAGUE!"] = true,
	["YOU ARE THE BOMB!"] = true,
	["YOU ARE BEING WATCHED!"] = true,
	["YOU ARE CURSED!"] = true,
	["YOU ARE BURNING!"] = true,
	["YOU ARE AFFLICTED BY VOLATILE INFECTION!"] = true,
	["YOU ARE MARKED!"] = true,
}
local blockregexs = {
	"%*+ .+ %*+$",
}


local function IsSpam(text)
	if not text then return end
	if blockstrings[text] then return true end
	for _,regex in pairs(blockregexs) do if string.find(text, regex) then return true end end
end


local orig1 = ChatFrame_MessageEventHandler
ChatFrame_MessageEventHandler = function(event, txt, ...)
	if event == "CHAT_MSG_WHISPER" and not showtells and IsSpam(txt) then return end
	if raidchans[event] and not showraid and IsSpam(txt) then return end

	orig1(event, txt, ...)
end


local orig2 = RaidWarningFrame_OnEvent
RaidWarningFrame_OnEvent = function(event, message, ...)
	if not showraidwarn and IsSpam(message) then return end

	orig2(event, message, ...)
end


--~ function BossBlock:OnEnable()
--~ 	if CT_RAMessageFrame then self:Hook(CT_RAMessageFrame, "AddMessage", "CTRA_AddMessage") end
--~ end
--~ function BossBlock:CTRA_AddMessage(obj, text, ...)
--~ 	if not self.showraidsay and self:IsSpam(text) then return end
--~ 	self.hooks[CT_RAMessageFrame].AddMessage.orig(obj, text, ...)
--~ end



