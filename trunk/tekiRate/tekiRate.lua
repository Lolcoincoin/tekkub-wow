

local L = AceLibrary("AceLocale-2.2"):new("RatingBuster")

local _G = getfenv(0)
local cache = {}
setmetatable(cache, {__mode = "kv"})


tekiRate = DongleStub("Dongle-Beta0"):New("tekiRate")
--~ if UnitName("player") == "Tekkub" then tekiRate:EnableDebug(1, ChatFrame5) end


-------------------------------
--      Initializations      --
-------------------------------

function tekiRate:Initialize()
	-- Build the RatingNameToID table from L["ratingNames"] table
	self.RatingNameToID = {}
	for _, v in ipairs(L["ratingNames"]) do self.RatingNameToID[v[1]] = v[2] end

	----  Hook tooltips  ----
	for _,tooltip in pairs{ItemRefTooltip,	GameTooltip} do
		local orig = tooltip:GetScript("OnTooltipSetItem")
		tooltip:SetScript("OnTooltipSetItem", function(frame, ...)
			local _, link = frame:GetItem()
			self:ProcessTooltip(frame, link)
			if orig then return orig(frame, ...) end
		end)
	end
end


--------------------------------
--      Rating converter      --
--------------------------------

-- Level 60 base rating
local RatingBase = {2.5, 1.5, 12, 20, 5, 10, 10, 8, 14, 14, 14, 10, 10, 10, 25}

-- Formula reverse engineered by Whitetooth@Cenarius (hotdogee@¤Ú«¢©i¯Sbaha)
-- returns percentages
local function ReverseRating(value, rType)
	assert(type(value) == "number", "Bad value for arg 1, expected number, got "..type(value))
	assert(type(rType) == "number", "Bad value for arg 2, expected number, got "..type(rType))
	assert(rType >=1 and rType <= 15, rType.. " is out of range for arg 2")

	local level = UnitLevel("player")
	if     level >= 60 then return value/RatingBase[rType] * ( (-3/82) * level + (131/41) )
	elseif level >= 10 then return value/RatingBase[rType] / ( (1/52)  * level - (8/52) )
	else return 0 end
end


------------------------------------
--      Process Tooltip Core      --
------------------------------------
--[[
Method 1
"+15 Crit Rating"
-> "+15(1.20%) Crit Rating"
"Equip: Increases your hit rating by 10."
-> "Equip: Increases your hit rating by 10(1.20%)."

Method 2
"+15 Crit Rating"
-> "+15 Crit Rating (1.20%)"
"Equip: Increases your hit rating by 10."
-> "Equip: Increases your hit rating by 10. (1.20%)"

Method 3
"+15 Crit Rating"
-> "+15 Crit Rating (1.20%)"
"Equip: Increases your hit rating by 10."
-> "Equip: +10 Hit Rating (1.20%)"

Method 4
+10 Sta (100HP)
Equip: Adds 15 critical hit rating (.85% )
Equip: Adds 12 resilience (-.58% crit, -1.16% crit damage)
--]]

-- "Increases your (.+) rating by ($d+)"
-- "%+(%d+) (.+) Rating"
-- "Adds (%d+) (.+) rating"
-- "Increases your (.+) rating by (%d+)"
-- "Improves (.+) rating by (%d+)"
-- "(.+) Rating %+(%d+)"
-- "%+(%d+) Resilience"

function tekiRate:ProcessTooltip(tooltip, link)
	local tipname = tooltip:GetName()
	for i=2,tooltip:NumLines() do
		local fontstring = _G[tipname.."TextLeft"..i]
		local text = self:ParseLine(fontstring:GetText())
		if text then fontstring:SetText(text) end
	end
	tooltip:Show()
end


function tekiRate:ParseLine(text)
	if not text then return end
	if cache[text] ~= nil then return cache[text] end
	if not string.find(text, "%d") then
		cache[text] = false
		return
	end
	self:Debug(1, "Parsing line", text)

	if not (string.find(text, "[Rr]ating") or string.find(text, "[Rr]esilience")) then
		cache[text] = false
		return
	end

	local lowerText = string.lower(text)
	for _, p in ipairs(L["numberPatterns"]) do
		local _, _, amount = string.find(lowerText, p.pattern)
		if amount then
			local separator, newtext = self:GetSeperator(text)
			if separator then return string.join(separator, self:ParseManyRatings(p, string.split("/,", newtext))) end
			local tag = self:GetRatingTag(lowerText, amount)
			if tag then
				cache[text] = text..tag
				return text..tag
			end
		end
	end
	cache[text] = false
end


function tekiRate:AppendRating(lowerText, amount, p, text, s, e)
	local ratingID = self:GetRatingID(lowerText)
	if not ratingID then return end

	-- calculate reverse value
	local reversedAmount = ReverseRating(tonumber(amount), ratingID, UnitLevel("player"))
	-- build reversed string
	local reversedString

	reversedString = string.format(" (%s%.2f%s)", ratingID == 15 and "-" or "", reversedAmount, (ratingID == 1 or ratingID == 2) and "" or "%")

	-- build converted string
	return string.gsub(text, p.pattern, string.gsub(string.sub(text, s, e), "%d+", "%0 "..reversedString), 1)
end


function tekiRate:GetRatingTag(text, amount)
	if not amount then return end
	local ratingID = self:GetRatingID(text)
	if not ratingID then return end

	return string.format(" (%s%.2f%s)", ratingID == 15 and "-" or "",
		ReverseRating(tonumber(amount), ratingID, UnitLevel("player")), (ratingID == 1 or ratingID == 2) and "" or "%")
end


function tekiRate:GetRatingID(lowerText)
	for _, v in ipairs(L["ratingNames"]) do
		if string.find(lowerText, v[1]) then
			return self.RatingNameToID[v[1]]
		end
	end
end


function tekiRate:GetSeperator(text)
	if string.find(text, " and ") then return s, string.gsub(text, " and ", ",") end
	if string.find(text, ",") then return ", ", text end
	if string.find(text, "/") then return "/", text end
end


function tekiRate:ParseManyRatings(p, text, ...)
	assert(type(text) == "text", "Bad value for arg 2, expected text, got "..type(text))
	self:Debug(1, "Parsing part", text)

	local lowerText = string.lower(text)
	-- Capture the increased amount
	local tag = self:GetRatingTag(lowerText, select(3, string.find(lowerText, p.pattern)))
	if tag then text = text..tag end

	if select("#", ...) > 0 then return text, self:ParseManyRatings(p, ...)
	else return text end
end

