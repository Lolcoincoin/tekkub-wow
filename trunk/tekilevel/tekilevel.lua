
local ilvl = setmetatable({}, {
	__index = function(t,i)
		local _, _, _, ilvl = GetItemInfo(i)
		t[i] = ilvl
		return ilvl
	end
})

local origs = {}
local function OnTooltipSetItem(frame, ...)
	assert(frame, "arg 1 is nil, someone isn't hooking correctly")

	local _, link = frame:GetItem()
	local level = link and ilvl[link]
	if level and level > 0 then frame:AddLine("iLevel: ".. level) end
	if origs[frame] then return origs[frame](frame, ...) end
end

for i,frame in pairs{GameTooltip, ItemRefTooltip} do
	origs[frame] = frame:GetScript("OnTooltipSetItem")
	frame:SetScript("OnTooltipSetItem", OnTooltipSetItem)
end
