
------------------------------
--      Are you local?      --
------------------------------

local compost = AceLibrary("Compost-2.0")
local metro = AceLibrary("Metrognome-2.0")
local L = PerfectTargets_Locale
PerfectTargets_Locale = nil

local maxbuffs, maxdebuffs = 32, 40
local delaycount, numtargets, framecount, ptframe = 0, 0, 0, PerfectRaidTargetFrame
local targets, targetcounts, tanks, tankstrings = {}, {}, {}, {}


-------------------------------------
--      Namespace Declaration      --
-------------------------------------

---------------------------
--      Ace Methods      --
---------------------------

function PerfectTargets:OnEnable()
	if not self.mainframe then self:CreateFrame() end
	self:RegisterEvent("PLAYER_TARGET_CHANGED")
	self:RegisterEvent("UNIT_TARGET")
	metro:Start("PerfectTargets MyTarget")
	metro:Start("PerfectTargets Targets")
end


function PerfectTargets:OnDisable()
	metro:Stop("PerfectTargets MyTarget")
	metro:Stop("PerfectTargets Targets")
end


------------------------------
--      Event Handlers      --
------------------------------

function PerfectTargets:PLAYER_TARGET_CHANGED()
	metro:Start("PerfectTargets MyTargetChanged", 1)
end


------------------------------------
--      Unit Testing Methods      --
------------------------------------

function PerfectTargets:PerfectTargets_UpdateMyTargetChanged()
	self:PerfectTargets_UpdateAllTargets(true)
end


function PerfectTargets:PerfectTargets_UpdateAllTargets(override)
	delaycount = delaycount - 1
	if not override and delaycount > 0 then return end

	-- Updates the known target list
	local pmem, rmem = GetNumPartyMembers(), GetNumRaidMembers()
	targets = compost:Erase(targets)
	targetcounts = compost:Erase(targetcounts)
	tankstrings = compost:Erase(tankstrings)
	numtargets = 0

	if rmem > 0 then
		for i = 1,rmem do
			self:TestTarget("raid"..i)
			self:TestTarget("raidpet".. i)
		end
	elseif pmem > 0 then
		for i = 1,pmem do
			self:TestTarget("party"..i)
			self:TestTarget("partypet".. i)
		end
	end
	if rmem == 0 then self:TestTarget("player") end
	self:TestTarget("pet")

	local numframes = math.min(numtargets, self.db.profile.maxframes)
	if numframes > framecount then framecount = numframes end
	self:UpdateFrames()

--~~ 	local targs = math.min(numtargets, self.db.profile.maxframes)
	delaycount = math.min(numtargets, self.db.profile.maxframes)
--~~ 	local newrate = targs == 0 and self.db.profile.baserate or self.db.profile.baserate*targs
--~~ 	metro:ChangeRate("PerfectTargets Targets", newrate)
end


function PerfectTargets:TestTarget(unit)
	if not unit or not UnitExists(unit) or not UnitExists(unit.."target")
	or UnitIsCivilian(unit.."target") or UnitIsDead(unit.."target") or UnitIsCorpse(unit.."target")
	or not UnitCanAttack("player", unit.."target") or not UnitIsVisible(unit) or not UnitIsVisible(unit.."target") then return end

	for i,unit2 in pairs(targets) do
		if UnitIsUnit(unit.."target", unit2.."target") then
			if unit ~= "player" and unit ~= "pet" then targetcounts[i] = targetcounts[i] + 1 end
			return
		end
	end

	table.insert(targets, unit)
	numtargets = numtargets + 1
	if unit ~= "player" and unit ~= "pet" then table.insert(targetcounts, 1)
	else table.insert(targetcounts, 0) end
end


function PerfectTargets:IsTargeted(unit,skipPlayer)
	if not unit or not UnitExists(unit) or not UnitExists(unit.."target")
	or UnitIsCivilian(unit.."target") or UnitIsDead(unit.."target") or UnitIsCorpse(unit.."target")
	or not UnitCanAttack("player", unit.."target") or not UnitIsVisible(unit) or not UnitIsVisible(unit.."target") then return end

	for i,unit2 in pairs(targets) do
		if UnitIsUnit(unit, unit2.."target") then
			if not skipPlayer or not UnitIsUnit(unit2, "player") then return unit2 end
		end
	end

	return
end






