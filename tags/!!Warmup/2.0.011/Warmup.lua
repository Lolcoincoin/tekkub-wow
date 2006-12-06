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


local function PutOut(txt, color, time, mem, gc)
	local outstr = (time and string.format("%.3f sec | ", time) or "")..
		color.. txt.. (mem and string.format(" (%d KiB", mem) or "")..
		(gc and string.format(" - %d KiB)", gc) or mem and ")" or "")

	if usecombatframe then combatframe:AddMessage(outstr) end
	outframe:AddMessage(outstr)
end


local function PutOutAO(name, time, mem, garbage)
	outframe:AddMessage(string.format("%s%.3f sec|r | %s (%s%d KiB|r - %s%d KiB|r)", GetThreshColor("time", time), time,
		name, GetThreshColor("mem", mem), mem, GetThreshColor("mem", garbage), garbage))
	return string.format("%.3f sec|r | %s (%d KiB|r - %d KiB)", time, name, mem, garbage)
end


do
	local rl = ReloadUI
	ReloadUI = function (...)
		reloading = true
		rl(...)
	end

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
	tinsert(UISpecialFrames,"WarmupOutputFrame")
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
				if usecombatframe then combatframe:AddMessage("Addon loaded before Warmup: ".. GetAddOnInfo(i)) end
				outframe:AddMessage("Addon loaded before Warmup: ".. GetAddOnInfo(i))
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
		outframe:AddMessage(string.format(threshcolors[1].."%d|r | %s%s|r", eventcounts[ev], threshcolors[4], ev))
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
	if sv.time then PutOut("ReloadUI", threshcolors[4], inittime - sv.time) end
	PutOut("Addon Loadup", threshcolors[4], varsloadtime - inittime - gctime, lastmem - initmem, totalgarbage)
	PutOut("Warmup's Garbage Collection", threshcolors[4], gctime)
	PutOut("Longest addon: ".. longestaddon, threshcolors[2], longesttime)
	PutOut("Biggest addon: ".. biggestaddon, threshcolors[2], nil, biggestmem)
	PutOut("Most Garbage: "..mostgarbageaddon, threshcolors[2], nil, mostgarbage)

	frame:RegisterEvent("PLAYER_LOGIN")

	SlashCmdList["RELOAD"] = ReloadUI
	SLASH_RELOAD1 = "/rl"

	SlashCmdList["WARMUP"] = function()
		if WarmupOutputFrame:IsVisible() then WarmupOutputFrame:Hide()
		else WarmupOutputFrame:Show() end
	end

	SLASH_WARMUP1 = "/wu"
	SLASH_WARMUP2 = "/warmup"

	collectgarbage("restart")
end


function Warmup:PLAYER_LOGIN()
	logging = true
	frame:RegisterEvent("PLAYER_ENTERING_WORLD")
end


function Warmup:PLAYER_ENTERING_WORLD()
	if inittime and logging then
		local entrytime = GetTime()

		PutOut("World entry", threshcolors[4], entrytime - varsloadtime)

		if sv.time then PutOut("Total time", threshcolors[4], entrytime - sv.time)
		else PutOut("Total time", threshcolors[4], entrytime - inittime) end

		sv.time = nil
		varsloadtime = nil
	elseif sv.time then
		PutOut("Zoning", threshcolors[4], GetTime() - sv.time)
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
