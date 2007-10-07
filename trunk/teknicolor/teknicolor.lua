

----------------------------
--      Localization      --
----------------------------

local locale = GetLocale()
-- Localized class names.  Index == enUS, value == localized
local classnames = locale == "deDE" and {
	["Warlock"] = "Hexenmeister",
	["Warrior"] = "Krieger",
	["Hunter"] = "J�ger",
	["Mage"] = "Magier",
	["Priest"] = "Priester",
	["Druid"] = "Druide",
	["Paladin"] = "Paladin",
	["Shaman"] = "Schamane",
	["Rogue"] = "Schurke",
} or locale == "frFR" and {
	["Warlock"] = "D\195\169moniste",
	["Warrior"] = "Guerrier",
	["Hunter"] = "Chasseur",
	["Mage"] = "Mage",
	["Priest"] = "Pr\195\170tre",
	["Druid"] = "Druide",
	["Paladin"] = "Paladin",
	["Shaman"] = "Chaman",
	["Rogue"] = "Voleur",
} or {
	["Warlock"] = "Warlock",
	["Warrior"] = "Warrior",
	["Hunter"] = "Hunter",
	["Mage"] = "Mage",
	["Priest"] = "Priest",
	["Druid"] = "Druid",
	["Paladin"] = "Paladin",
	["Shaman"] = "Shaman",
	["Rogue"] = "Rogue",
}

local revclass = {}
for i,v in pairs(classnames) do revclass[v] = i end


------------------------------
--      Are you local?      --
------------------------------

local colors, x = {}, {}
local names = setmetatable({}, {
	__index = function(t, k) return x[k] end,
	__newindex = function(t, k, v)
		if not v or not k or x[k] or not colors[v] then return end
		x[k] = string.format("|cff%s[%s]|r", colors[v], k)
	end,
})


teknicolor = DongleStub("Dongle-1.0"):New("teknicolor")
teknicolor.nametable = names


local function tohex(r, g, b)
	return string.format("%02x%02x%02x", r*255, g*255, b*255)
end


function teknicolor:Initialize()
	for class,eng in pairs(revclass) do
		local c = RAID_CLASS_COLORS[string.upper(eng)]
		local hex = tohex(c.r, c.g, c.b)
		colors[eng] = hex
		colors[class] = hex
		colors[string.upper(eng)] = hex
	end
	revclass = nil
end


function teknicolor:Enable()
	names[UnitName("player")] = select(2, UnitClass("player"))

	self:RegisterEvent("VARIABLES_LOADED")
	self:RegisterEvent("FRIENDLIST_UPDATE")
	self:RegisterEvent("GUILD_ROSTER_UPDATE")
	self:RegisterEvent("RAID_ROSTER_UPDATE")
	self:RegisterEvent("PARTY_MEMBERS_CHANGED")
	self:RegisterEvent("PLAYER_TARGET_CHANGED")
	self:RegisterEvent("WHO_LIST_UPDATE")
	self:RegisterEvent("UPDATE_MOUSEOVER_UNIT")
	self:RegisterEvent("CHAT_MSG_SYSTEM")

	self:Debug(1, "Enable Called", IsInGuild() and "In Guild" or "No Guild", GetNumFriends().." Friends")
	if IsInGuild() then GuildRoster() end
	if GetNumFriends() > 0 then ShowFriends() end
end


------------------------------------
--      Class caching events      --
------------------------------------

function teknicolor:FRIENDLIST_UPDATE()
	for i=1,GetNumFriends() do
		local name, _, class = GetFriendInfo(i)
		if name then names[name] = class end
	end
end


function teknicolor:GUILD_ROSTER_UPDATE()
	for i=1,GetNumGuildMembers(true) do
		local name, _, _, _,class = GetGuildRosterInfo(i)
		names[name] = class
	end
end


function teknicolor:RAID_ROSTER_UPDATE()
	for i=1,GetNumRaidMembers() do
		local name, _, _, _, _, class = GetRaidRosterInfo(i)
		names[name] = class
	end
end


function teknicolor:PARTY_MEMBERS_CHANGED()
	for i=1,GetNumPartyMembers() do
		local unit = "party".. i
		local _, class = UnitClass(unit)
		names[UnitName(unit)] = class
	end
end


function teknicolor:PLAYER_TARGET_CHANGED()
	if not UnitIsPlayer("target") or not UnitIsFriend("player", "target") then return end
	local _, class = UnitClass("target")
	names[UnitName("target")] = class
end


function teknicolor:WHO_LIST_UPDATE()
	for i=1,GetNumWhoResults() do
		local name, _, _, _, class = GetWhoInfo(i)
		names[name] = class
	end
end


function teknicolor:UPDATE_MOUSEOVER_UNIT()
	if not UnitIsPlayer("mouseover") or not UnitIsFriend("player", "mouseover") then return end
	local _, class = UnitClass("mouseover")
	names[UnitName("mouseover")] = class
end


function teknicolor:CHAT_MSG_SYSTEM()
	local _, _, name, class = string.find(arg1, "^|Hplayer:%w+|h%[(%w+)%]|h: Level %d+ %w+ (%w+) %- .+$")
	if name and class then names[name] = class end
end


----------------------------------
--      Chatframe coloring      --
----------------------------------

local origadds = {}


local function NewAddMessage(frame, text, ...)
	local name = arg2
	if event == "CHAT_MSG_SYSTEM" then name = select(3, string.find(text, "|h%[(.+)%]|h")) end
	if name and names[name] then text = string.gsub(text, "|h%["..name.."%]|h", "|h"..names[name].."|h") end
	return origadds[frame](frame, text, ...)
end


for i=1,7 do
	local f = _G["ChatFrame"..i]
	origadds[f] = f.AddMessage
	f.AddMessage = NewAddMessage
end


------------------------------------
--      Friend List Coloring      --
------------------------------------

local origs, frameindexes = {}, {}


local function NewSetText(frame, ...)
	local i = frameindexes[frame]
	local name, _, class, area, connected, status = GetFriendInfo(FauxScrollFrame_GetOffset(FriendsFrameFriendsScrollFrame) + i)
	if name and class and colors[class] then
		local text = ("|cff"..colors[class]..name.."|r")
		return origs[frame](frame, (string.format(FRIENDS_LIST_TEMPLATE, text, area, status)))
	else return origs[frame](frame, ...) end
end


for i=1,FRIENDS_TO_DISPLAY do
	local f = _G["FriendsFrameFriendButton"..i.."ButtonTextNameLocation"]
	frameindexes[f] = i
	origs[f] = f.SetText
	f.SetText = NewSetText
end

