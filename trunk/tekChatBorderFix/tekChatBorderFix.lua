
local frames = {}
local _G = getfenv(0)
for _,b in ipairs({"ResizeBottomLeft", "ResizeBottomRight", "ResizeTopLeft", "ResizeTopRight", "ResizeTop", "ResizeBottom", "ResizeRight", "ResizeLeft"}) do
	for i=1,7 do
		frames[i] = {}
		frames[i][_G["ChatFrame"..i..b]] = true
	end
end


tekChatBorderFix = {}


local orig = SetChatWindowLocked
SetChatWindowLocked = function(index, locked, ...)
	for f in pairs(frames[index]) do f:EnableMouse(not locked) end
	return orig(index, locked, ...)
end


local f = CreateFrame("Frame")
local last
f:SetScript("OnUpdate", function()
	local n = _G["CHAT_LOCKED"]
	if n == last then return end

	for i,v in pairs(frames) do
		for f in pairs(v) do f:EnableMouse(n ~= "1") end
	end

	last = n
end)
