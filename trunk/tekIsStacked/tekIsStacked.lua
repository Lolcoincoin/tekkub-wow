
local stacks = setmetatable({}, {
	__index = function(t,i)
		local _, _, _, _, _, _, _, stack = GetItemInfo(i)
		t[i] = stack
		return stack
	end
})

local orig1 = GameTooltip:GetScript("OnTooltipSetItem")
GameTooltip:SetScript("OnTooltipSetItem", function(frame, ...)
	assert(frame, "arg 1 is nil, someone isn't hooking correctly")

	local _, link = frame:GetItem()
	local stack = stacks[link]
	if stack and stack > 0 then frame:AddLine("Stack size: ".. stack) end
	if orig1 then return orig1(frame, ...) end
end)
