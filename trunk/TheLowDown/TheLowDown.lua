

local metro = DongleStub("MetrognomeNano")

TheLowDown = {}
DongleStub("Dongle"):New(TheLowDown, "TheLowDown")


local scrolldowns = {}
local delay = 20  -- Change this value if you want a different delay between your last scroll
	                -- and the time the frame resets.  This value is in seconds.

function TheLowDown:Initialize()
	local _G = getfenv(0)
	local funcs = {"ScrollUp", "ScrollDown", "ScrollToTop", "PageUp", "PageDown"}

	for i = 1,7 do
		local name = "ChatFrame" .. i
		local frame = _G[name]
		scrolldowns[name] = frame.ScrollDown
		metro:Register(self, name.."DownTick", "ScrollOnce", 0.1, name, frame)
		metro:Register(self, name.."DownTimeout", "ResetFrame", delay, name, frame)
		for _,func in ipairs(funcs) do
			local orig = frame[func]
			frame[func] = function(...)
				metro:Stop(name.."DownTick")
				metro:Start(name.."DownTimeout", 1)
				orig(...)
			end
		end
	end
end


function TheLowDown:ResetFrame(elapsed, name, frame)
	metro:Stop(name.."DownTimeout")
	metro:Start(name.."DownTick")
end


function TheLowDown:ScrollOnce(elapsed, name, frame)
	if frame:AtBottom() then metro:Stop(name.."DownTick")
	else scrolldowns[name](frame) end
end

