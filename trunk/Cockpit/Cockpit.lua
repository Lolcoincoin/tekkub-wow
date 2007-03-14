
------------------------------
--      Are you local?      --
------------------------------

local ontaxi, overidden, db, slash


---------------------------------
--      Addon Declaration      --
---------------------------------

Cockpit = DongleStub("Dongle-Beta1"):New("Cockpit")


------------------------------
--      Initialization      --
------------------------------

function Cockpit:Enable()
	db = self:InitializeDB("CockpitDB", {hideui = false, flightview = 1, landingview = 5}, "global")
	slash = self:InitializeSlashCommand("Automatic camera zoom while flying", "COCKPIT", "cockpit", "cock")
	slash:RegisterSlashHandler("hideui: toggle hiding of the UI while in flight", "^hideui$", function()
		db.profile.hideui = not db.profile.hideui
	end)

	self:RegisterEvent("UNIT_FLAGS")
	self:RegisterEvent("PLAYER_CONTROL_GAINED")
end


------------------------------
--      Event Handlers      --
------------------------------

function Cockpit:UNIT_FLAGS()
	if not UnitOnTaxi("player") then return end

	if IsShiftKeyDown() then
		overidden = true
		return
	end

	if db.profile.hideui then
		CloseAllWindows()
		UIParent:Hide()
	end

	SetView(db.profile.flightview)
	ontaxi = true
end


function Cockpit:PLAYER_CONTROL_GAINED()
	if not ontaxi then return end

	if overidden then
		overidden = false
		return
	end

	if not UIParent:IsVisible() then UIParent:Show() end
	SetView(db.profile.landingview)
	ontaxi = false
end




