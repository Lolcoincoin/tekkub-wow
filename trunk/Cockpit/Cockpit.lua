
------------------------------
--      Are you local?      --
------------------------------

local ontaxi, overidden, db, slash


---------------------------------
--      Addon Declaration      --
---------------------------------

Cockpit = DongleStub("Dongle-1.0"):New("Cockpit")
if tekDebug then Cockpit:EnableDebug(1, tekDebug:GetFrame("Cockpit")) end


------------------------------
--      Initialization      --
------------------------------

function Cockpit:Enable()
	db = self:InitializeDB("CockpitDB", {profile={hideui = false, flightview = 1, landingview = 5}}, "global")
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

	self:Debug(1, "Player on taxi")

	if IsShiftKeyDown() then
		overidden = true
		return
	end

	if db.profile.hideui and not InCombatLockdown() then
		CloseAllWindows()
		UIParent:Hide()
	end

	SetView(db.profile.flightview)
	ontaxi = true
end


function Cockpit:PLAYER_CONTROL_GAINED()
	if overidden then
		overidden = false
		return
	end

	if not ontaxi then return end

	if not UIParent:IsVisible() and not InCombatLockdown() then UIParent:Show() end
	SetView(db.profile.landingview)
	ontaxi = false
end




