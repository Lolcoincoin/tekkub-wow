
local stacks = setmetatable({}, {
	__index = function(t,i)
		local _, _, _, _, _, _, _, stack = GetItemInfo(i)
		t[i] = stack
		return stack
	end
})

local origs = {}
local function OnTooltipSetItem(frame, ...)
	assert(frame, "arg 1 is nil, someone isn't hooking correctly")

	local _, link = frame:GetItem()
	local stack = link and stacks[link]
	if stack and stack > 0 then frame:AddLine("Stack size: ".. stack) end
	if origs[frame] then return origs[frame](frame, ...) end
end

for i,frame in pairs{GameTooltip, ItemRefTooltip} do
	origs[frame] = frame:GetScript("OnTooltipSetItem")
	frame:SetScript("OnTooltipSetItem", OnTooltipSetItem)
end
