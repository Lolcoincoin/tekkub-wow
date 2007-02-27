
local L = {
	["The orb's markings match the brand on your hand."] = "The orb's markings match the brand on your hand.",
	["Transport me to the Molten Core, Lothos."] = "Transport me to the Molten Core, Lothos.",
}


local alpha
local skip = {
	banker = true,
	vendor = true,
	taxi = true,
	battlemaster = true,
	trainer = false,
	healer = false,
	inn = false,
}


local f = CreateFrame("Frame")
f:SetScript("OnEvent", function(self, event) return self[event](self) end)
f:RegisterEvent("GOSSIP_SHOW")
f:RegisterEvent("GOSSIP_CLOSED")


function f:GOSSIP_SHOW()
	alpha = GossipFrame:GetAlpha()
	if IsShiftKeyDown() or GetGossipAvailableQuests() or GetGossipActiveQuests() then return end

	GossipFrame:SetAlpha(0)
	local t = GetGossipText()
	if t == L["The orb's markings match the brand on your hand."] or t == L["Transport me to the Molten Core, Lothos."] then
		SelectGossipOption(1)
		return
	end

	self:ParseGossip(GetGossipOptions())
end


function f:ParseGossip(...)
	for i=2,select("#", ...),2 do
		local v = select(i, ...)
		if skip[v] then return SelectGossipOption(i/2) end
	end

	GossipFrame:SetAlpha(alpha)
end


function f:GOSSIP_CLOSED()
	GossipFrame:SetAlpha(alpha)
end


