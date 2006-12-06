

local metro = DongleStub("MetrognomeNano")

TheBigPicture = {}
DongleStub("Dongle"):New(TheBigPicture, "TheBigPicture")


local orig = Minimap.SetZoom
local scrolldowns = {}
local delay = 20  -- Change this value if you want a different delay between your last scroll
	                -- and the time the frame resets.  This value is in seconds.

function TheBigPicture:Initialize()
	metro:Register(self, "TheBigPicture Timeout", "ResetFrame", delay)
	metro:Register(self, "TheBigPicture Tick", "ScrollOnce", 0.2)
	Minimap.SetZoom = function(...)
		metro:Stop("TheBigPicture Tick")
		metro:Start("TheBigPicture Timeout")
		orig(...)
	end
end


function TheBigPicture:ResetFrame(elapsed)
	metro:Stop("TheBigPicture Timeout")
	metro:Start("TheBigPicture Tick")
end


function TheBigPicture:ScrollOnce(elapsed)
	local z = Minimap:GetZoom()
	if z <= 0 then
		metro:Stop("TheBigPicture Tick")
		MinimapZoomIn:Enable()
		MinimapZoomOut:Disable()
	else orig(Minimap, z - 1) end
end


