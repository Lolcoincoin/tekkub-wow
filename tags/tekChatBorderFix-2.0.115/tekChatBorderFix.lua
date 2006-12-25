
local frames = {}
local _G = getfenv(0)
for _,b in ipairs({"ResizeBottomLeft", "ResizeBottomRight", "ResizeTopLeft", "ResizeTopRight", "ResizeTop", "ResizeBottom", "ResizeRight", "ResizeLeft"}) do
	for i=1,7 do
		frames[i] = {}
		frames[i][_G["ChatFrame"..i..b]] = true
	end
end
_G = nil


tekChatBorderFix = {}


local orig = SetChatWindowLocked
SetChatWindowLocked = function(index, locked, ...)
	tekChatBorderFix:Debug(1, index, locked, ...)

	for f in pairs(frames[index]) do
		f:EnableMouse(not locked)
	end

	return orig(index, locked, ...)
end


local orig2 = FCF_Set_ChatLocked
FCF_Set_ChatLocked = function(lock, ...)
	for i,v in pairs(frames) do
		for f in pairs(v) do
			f:EnableMouse(not lock)
		end
	end

	return orig2(lock, ...)
end
