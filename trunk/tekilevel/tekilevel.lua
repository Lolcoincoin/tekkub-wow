
local ilvl = setmetatable({}, {
	__index = function(t,i)
		local _, _, _, ilvl = GetItemInfo(i)
		t[i] = ilvl
		return ilvl
	end
})

local orig1 = GameTooltip:GetScript("OnTooltipSetItem")
GameTooltip:SetScript("OnTooltipSetItem", function(frame, ...)
	assert(frame, "arg 1 is nil, someone isn't hooking correctly")

	local _, link = frame:GetItem()
	local level = ilvl[link]
	if level and level > 0 then frame:AddLine("iLevel: ".. level) end
	if orig1 then return orig1(frame, ...) end
end)


