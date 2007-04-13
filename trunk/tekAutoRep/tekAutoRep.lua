
local L = {
	FACTION_STANDING_CHANGED = "You are now .+ with (.+).",
	FACTION_STANDING_DECREASED = "Your (.+) reputation has decreased by",
	FACTION_STANDING_INCREASED = "Your (.+) reputation has increased by",
}
local inactives = {}

tekAutoRep = DongleStub("Dongle-1.0"):New("tekAutoRep")


function tekAutoRep:Enable()
	self:RegisterEvent("CHAT_MSG_COMBAT_FACTION_CHANGE")
	self:RegisterEvent("UPDATE_FACTION")
end


function tekAutoRep:UPDATE_FACTION()
	local inact
	for i=1,GetNumFactions() do
		local name = GetFactionInfo(i)
		if name == "Inactive" then inact = i
		elseif inact then inactives[name] = true
		end
	end

	if inact then
		self:UnregisterEvent("UPDATE_FACTION")
		CollapseFactionHeader(inact)
	end
end


function tekAutoRep:CHAT_MSG_COMBAT_FACTION_CHANGE(event, msg)
	local faction = select(3, string.find(msg, L.FACTION_STANDING_CHANGED)) or
		select(3, string.find(msg, L.FACTION_STANDING_INCREASED))

	if not faction then return end

	local current = GetWatchedFactionInfo()
	for i=1,GetNumFactions() do
		local name = GetFactionInfo(i)
		if name == faction and name ~= current then
			return SetWatchedFactionIndex(i)
		end
	end
end



