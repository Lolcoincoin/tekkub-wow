
local Compost = AceLibrary("Compost-2.0")
local L = AceLibrary("AceLocale-2.2"):new("RatingBuster")

local _G = getfenv(0)


tekiRate = DongleStub("Dongle-Beta0"):New("tekiRate")


---------------------
-- Initializations --
---------------------

function tekiRate:OnInitialize()
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


--------------------------
-- Process Tooltip Core --
--------------------------
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



function tekiRate:ProcessTooltip(tooltip, link)
	local tipname = tooltip:GetName()
	for i = 2, tooltip:NumLines() do self:ParseLine(_G[tipname.."TextLeft"..i]) end
	tooltip:Show()
end


function tekiRate:ParseLine(fontstring)
	local lineText = fontstring:GetText()
	if not lineText or not string.find(lineText, "%d") then return end

	for _, p in ipairs(L["numberPatterns"]) do
		local lowerText = string.lower(lineText) -- convert to lower so we don't have to worry about same ratings with different cases
		-- Capture the increased amount
		local s, e, amount = string.find(lowerText, p.pattern)
		if not amount then return end

		-- Check for separators
		local separator, newtext = self:GetSeperator(p, lineText)

		-- If this line has a separator, then we do the split and combine algorithm
		if separator then
			local splitText = Compost:Acquire(string.split("/", newtext))
			for i,text in ipairs(splitText) do
				local lowerText = string.lower(text) -- convert to lower so we don't have to worry about same ratings with different cases
				-- Capture the increased amount
				local s, e, amount = string.find(lowerText, p.pattern)
				if amount then splitText[i] = self:AppendRating(lowerText, amount, p, text, s, e) end
			end -- for i, text in ipairs(splitText)
			lineText = string.join(separator, unpack(splitText))
			Compost:Reclaim(splitText)
		else
			lineText = self:AppendRating(lowerText, amount, p, text, s, e)
		end
	end

	fontstring:SetText(lineText)
end

function tekiRate:AppendRating(lowerText, amount, p, text, s, e)
	local ratingID = self:GetRatingID(lowerText)
	if not ratingID then return end

	-- calculate reverse value
	local reversedAmount = ReverseRating(tonumber(amount), ratingID, UnitLevel("player"))
	-- build reversed string
	local reversedString

	reversedString = string.format("(%s%.2f%s)", ratingID == 15 and "-" or "",
		reversedAmount, (ratingID == 1 or ratingID == 2) and "" or "%%%%")

		-- build converted string
	return string.gsub(text, p.pattern, string.gsub(string.sub(text, s, e), "%d+", "%0 "..reversedString), 1)
end


function tekiRate:GetRatingID(lowerText)
	for _, v in ipairs(L["ratingNames"]) do
		if string.find(lowerText, v[1]) then
			return self.RatingNameToID[v[1]]
		end
	end
end


function tekiRate:GetSeperator(p, lineText)
	for _, s in ipairs(p.separators) do
		if string.find(lineText, s) then return s, string.gsub(lineText, s, "/") end
	end
end

