
local deformat = AceLibrary("Deformat-2.0")

tekAutoRep = AceLibrary("AceAddon-2.0"):new("AceEvent-2.0", "AceConsole-2.0", "AceDB-2.0")
tekAutoRep:RegisterDB("tekAutoRepDB", "tekAutoRepDBPC")
tekAutoRep:RegisterDefaults("profile", {collapse = true, changebar = true})
tekAutoRep:RegisterChatCommand({"/tekar", "/tekautorep"}, {type = "group", handler = tekAutoRep, args = {
	["collapse"] = {
		type = "toggle",
		name = "Collapse inactive",
		desc = "Automatically collapse the 'Inactive' group on loadup.",
		get = function() return tekAutoRep.db.profile.collapse end,
		set = function(v) tekAutoRep.db.profile.collapse = v end,
	},
	["track"] = {
		type = "toggle",
		name = "Auto-track reputation",
		desc = "Automatically track the latest faction you've gained rep with.",
		get = function() return tekAutoRep.db.profile.changebar end,
		set = function(v) tekAutoRep.db.profile.changebar = v end,
	},
}})


function tekAutoRep:OnInitialize()
	self:RegisterEvent("AceEvent_FullyInitialized")
end


function tekAutoRep:AceEvent_FullyInitialized()
	if not self.db.profile.collapse then return end

	for i=1,GetNumFactions() do
		if GetFactionInfo(i) == "Inactive" then CollapseFactionHeader(i) end
	end
end


function tekAutoRep:OnEnable()
	self:RegisterEvent("CHAT_MSG_COMBAT_FACTION_CHANGE")
	self:RegisterEvent("tekAutoRep_NewFaction")
end


function tekAutoRep:CHAT_MSG_COMBAT_FACTION_CHANGE()
	if not self.db.profile.changebar then return end

	local _,faction = deformat(arg1, FACTION_STANDING_CHANGED)
	if not faction then faction = deformat(arg1, FACTION_STANDING_INCREASED) or deformat(arg1, FACTION_STANDING_DECREASED) end
	if faction then self:TriggerEvent("tekAutoRep_NewFaction", faction) end
end


function tekAutoRep:tekAutoRep_NewFaction(faction)
	local current = GetWatchedFactionInfo()
	for i=1,GetNumFactions() do
		local name = GetFactionInfo(i)
		if name == faction and name ~= current then
			SetWatchedFactionIndex(i)
			return
		end
	end
end



