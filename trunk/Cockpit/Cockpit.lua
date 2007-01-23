
------------------------------
--      Are you local?      --
------------------------------

local ontaxi, overidden
local hideui, flightview, landingview = false, 1, 5


---------------------------------
--      Addon Declaration      --
---------------------------------

Cockpit = DongleStub("Dongle-Beta0"):New("Cockpit")


------------------------------
--      Initialization      --
------------------------------

function Cockpit:Enable()
	self:RegisterEvent("UNIT_FLAGS")
	self:RegisterEvent("PLAYER_CONTROL_GAINED")
end


------------------------------
--      Event Handlers      --
------------------------------

function Cockpit:UNIT_FLAGS()
	if UnitOnTaxi("player") then
		if IsShiftKeyDown() then
			overidden = true
			return
		end

		if hideui then
			CloseAllWindows()
			UIParent:Hide()
		end

		SetView(flightview)
		ontaxi = true
	end
end


function Cockpit:PLAYER_CONTROL_GAINED()
	if ontaxi then
		if overidden then
			overidden = false
			return
		end

		if not UIParent:IsVisible() then UIParent:Show() end
		SetView(landingview)
		ontaxi = false
	end
end




