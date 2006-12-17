
local frames = {}


tekChatBorderFix = Dongle:New("tekChatBorderFix")


function tekChatBorderFix:Initialize()
	local _G = getfenv(0)

	for _,b in ipairs({"ResizeBottomLeft", "ResizeBottomRight", "ResizeTopLeft", "ResizeTopRight", "ResizeTop", "ResizeBottom", "ResizeRight", "ResizeLeft"}) do
		for i=1,7 do frames[_G["ChatFrame"..i..b]] = true end
	end
end


function tekChatBorderFix:Fix()
	for f in pairs(frames) do f:EnableMouse(false) end
end

