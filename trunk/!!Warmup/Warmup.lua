collectgarbage("stop")
collectgarbage("collect")
local inittime, initmem = GetTime(), collectgarbage("count")
local longesttime, biggestmem, totalmem, totalgarbage, mostgarbage, gctime = 0, 0, 0, 0, 0, 0
local eventcounts, combatframe = {}, ChatFrame2
local threshtimes, threshmems = {1.0, 0.5, 0.1}, {1000, 500, 100}
local threshcolors = {"|cffff0000", "|cffff8000", "|cffffff80", "|cff80ff80"}
local outframe, sv, intransit, reloading, longestaddon, biggestaddon, varsloadtime, logging, mostgarbageaddon
local memstack, timestack = {initmem}, {inittime}

local usecombatframe = false

local L = {
	slashShort  = "/wu",
	slashLong   = "/warmup",
	slashReload = "/rl",
	slashRLND   = "/rlnd",

	loadwarn     = "Addon loaded before Warmup: %s",
	log          = "%.3f sec | %s (%d KiB - %d KiB)",
	outTMG       = "%s%.3f sec|r | %s (%s%d KiB|r - %s%d KiB|r)",
	outRL        = "%.3f sec | ".. threshcolors[4].. "ReloadUI",
	outAddon     = "%.3f sec | ".. threshcolors[4].. "Addon Loadup (%d KiB - %d KiB)"
	outGC        = "%.3f sec | ".. threshcolors[4].. "Warmup's Garbage Collection"
	outLongAddon = "%.3f sec | ".. threshcolors[2].. "Longest addon: %s"
	outBigAddon  = threshcolors[2].. "Biggest addon: %s (%d KiB)"
	outMostGC    = threshcolors[2].. "Most Garbage: %s (%d KiB)"
	outEntry     = "%.3f sec | ".. threshcolors[4].. "World entry",
	outTime      = "%.3f sec | ".. threshcolors[4].. "Total time",
	outZone      = "%.3f sec | ".. threshcolors[4].. "Zoning",
	outEvent     = threshcolors[1].. "%d|r | %s%s|r",
}

local frame = CreateFrame("Frame", "WarmupFrame", UIParent)
Warmup = {}

frame:SetScript("OnEvent", function(self, event, ...)
	if eventcounts then eventcounts[event] = (eventcounts[event] or 0) + 1 end
	if Warmup[event] then Warmup[event](Warmup, ...) end
end)


local function GetThreshColor(set, value)
	local t = set == "mem" and threshmems or threshtimes
	for i,v in pairs(t) do
		if value >= v then return threshcolors[i] end
	end
	return threshcolors[4]
end


local function PutOut(...)
	local txt = string.format(...)
	if usecombatframe then combatframe:AddMessage(txt) end
	outframe:AddMessage(txt)
end


local function PutOutAO(name, time, mem, garbage)
	outframe:AddMessage(string.format(L.outTMG, GetThreshColor("time", time), time,
		name, GetThreshColor("mem", mem), mem, GetThreshColor("mem", garbage), garbage))
	return string.format(L.log, time, name, mem, garbage)
end


do
	local loadandpop = function(...)
		local newm, newt = table.remove(memstack), table.remove(timestack)
		local oldm, oldt = table.remove(memstack), table.remove(timestack)
		local origm, origt = table.remove(memstack), table.remove(timestack)
		table.insert(memstack, origm + newm - oldm)
		table.insert(timestack, origt + newt - oldt)
		return ...
	end
	local lao = LoadAddOn
	LoadAddOn = function (...)
		local gt = GetTime()
		collectgarbage("collect")
		gctime = gctime + GetTime() - gt
		local newtime = GetTime()
		local newmem = collectgarbage("count")
		table.insert(memstack, newmem)
		table.insert(memstack, newmem)
		table.insert(timestack, newtime)
		table.insert(timestack, newtime)
		return loadandpop(lao(...))
	end
end


function Warmup:OnLoad()
	table.insert(UISpecialFrames, "WarmupOutputFrame")
	frame:RegisterAllEvents()
end


function Warmup:Init()
	if not WarmupSV then WarmupSV = {} end
	sv = WarmupSV
	sv.addoninfo = {}

	outframe = WarmupChatFrame
	for i=1,GetNumAddOns() do
		if IsAddOnLoaded(i) then
			if GetAddOnInfo(i) ~= "!!Warmup" then
				local msg = string.format(L.loadwarn, GetAddOnInfo(i))
				if usecombatframe then combatframe:AddMessage(msg) end
				outframe:AddMessage(msg)
			end
		end
	end

	outframe:SetScript("OnMouseWheel", function (self, delta)
		if delta > 0 then self:ScrollUp()
		elseif delta < 0 then
			if IsShiftKeyDown() then self:ScrollToBottom()
			else self:ScrollDown() end
		end
	end)
	outframe:EnableMouseWheel(1)
end


function Warmup:DumpEvents()
	local sortt = {}
	for ev,val in pairs(eventcounts) do table.insert(sortt, ev) end

	table.sort(sortt)

	for i,ev in pairs(sortt) do
		outframe:AddMessage(string.format(L.outEvent, eventcounts[ev], threshcolors[4], ev))
	end
end


function Warmup:ADDON_LOADED(addon)
	local addontime, addonmem = GetTime(), collectgarbage("count")
	local lastmem, lasttime = table.remove(memstack), table.remove(timestack)
	local diff = addonmem - lastmem

	local gt = GetTime()
	collectgarbage("collect")
	gctime = gctime + GetTime() - gt
	local gcmem = collectgarbage("count")
	local garbage = addonmem - gcmem

	if not outframe then self:Init() end

	table.insert(sv.addoninfo, PutOutAO(addon, addontime - lasttime, diff - garbage, garbage))

	if (addontime - lasttime) > longesttime then
		longesttime = addontime - lasttime
		longestaddon = addon
	end
	if (diff - garbage) > biggestmem then
		biggestmem = diff - garbage
		biggestaddon = addon
	end
	if garbage > mostgarbage then
		mostgarbage = garbage
		mostgarbageaddon = addon
	end
	totalgarbage = totalgarbage + garbage
	totalmem = totalmem + diff
	table.insert(memstack, gcmem)
	table.insert(timestack, addontime)
end


function Warmup:VARIABLES_LOADED()
	if varsloadtime then return end

	local gt = GetTime()
	collectgarbage("collect")
	gctime = gctime + GetTime() - gt

	local lastmem = collectgarbage("count")

	varsloadtime = GetTime()
	if sv.time then PutOut(L.outRL, inittime - sv.time) end
	PutOut(L.outAddon, varsloadtime - inittime - gctime, lastmem - initmem, totalgarbage)
	PutOut(L.outGC, gctime)
	PutOut(L.outLongAddon, longesttime, longestaddon)
	PutOut(L.outBigAddon, biggestaddon, biggestmem)
	PutOut(L.outMostGC, mostgarbageaddon, mostgarbage)

	frame:RegisterEvent("PLAYER_LOGIN")

	SlashCmdList["RELOAD"] = ReloadUI
	SLASH_RELOAD1 = L.slashReload

	SlashCmdList["RELOADNODISABLE"] = function()
		reloading = true
		EnableAddOn("!!Warmup")
		ReloadUI()
	end
	SLASH_RELOADNODISABLE1 = L.slashRLND

	SlashCmdList["WARMUP"] = function()
		if WarmupOutputFrame:IsVisible() then WarmupOutputFrame:Hide()
		else WarmupOutputFrame:Show() end
	end

	SLASH_WARMUP1 = L.slashShort
	SLASH_WARMUP2 = L.slashLong

	collectgarbage("restart")
	DisableAddOn("!!Warmup")
end


function Warmup:PLAYER_LOGIN()
	logging = true
	frame:RegisterEvent("PLAYER_ENTERING_WORLD")
end


function Warmup:PLAYER_ENTERING_WORLD()
	if inittime and logging then
		local entrytime = GetTime()

		PutOut(L.outEntry, entrytime - varsloadtime)

		if sv.time then PutOut(L.outTime, entrytime - sv.time)
		else PutOut(L.outTime, entrytime - inittime) end

		sv.time = nil
		varsloadtime = nil
	elseif sv.time then
		PutOut(L.outZone, GetTime() - sv.time)
		sv.time = nil
	end
	logging = nil
	frame:RegisterAllEvents()
	frame:UnregisterEvent("PLAYER_LOGIN")
	frame:UnregisterEvent("PLAYER_LOGOUT")
	frame:UnregisterEvent("PLAYER_ENTERING_WORLD")

	self:DumpEvents()
	eventcounts = nil
end


function Warmup:PLAYER_LEAVING_WORLD()
	sv.time = GetTime()
	frame:UnregisterAllEvents()
	frame:RegisterEvent("PLAYER_ENTERING_WORLD")
	frame:RegisterEvent("PLAYER_LOGOUT")

	eventcounts = {}
end


function Warmup:PLAYER_LOGOUT()
	if not reloading then sv.time = nil end
end


Warmup:OnLoad()
