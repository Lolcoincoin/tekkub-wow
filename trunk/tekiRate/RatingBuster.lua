
local Compost = AceLibrary("Compost-2.0")
local L = AceLibrary("AceLocale-2.2"):new("RatingBuster")

local _G = getfenv(0)


RatingBuster = AceLibrary("AceAddon-2.0"):new("AceDB-2.0", "AceEvent-2.0")


---------------------
-- Initializations --
---------------------

function RatingBuster:OnInitialize()
	-- Build the RatingNameToID table from L["ratingNames"] table
	RatingBuster.RatingNameToID = {}
	for _, v in ipairs(L["ratingNames"]) do self.RatingNameToID[v[1]] = v[2] end

	----  Hook tooltips  ----
	for _,tooltip in pairs{ItemRefTooltip,	GameTooltip} do
		local orig = tooltip:GetScript("OnTooltipSetItem")
		tooltip:SetScript("OnTooltipSetItem", function(frame, ...)
			local _, link = frame:GetItem()
			self.ProcessTooltip(frame, link)
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
function RatingBuster.ProcessTooltip(tooltip, link)
	local mylevel = UnitLevel("player")
	local tipname = tooltip:GetName()

	for i = 2, tooltip:NumLines() do
		local fontString = _G[tipname.."TextLeft"..i]
		local lineText = fontString:GetText()
		if lineText and strfind(lineText, "%d") then -- do nothing if we don't find a number
			for _, p in ipairs(L["numberPatterns"]) do
				local text = lineText
				local lowerText = string.lower(text) -- convert to lower so we don't have to worry about same ratings with different cases
				-- Capture the increased amount
				local s, e, amount = strfind(lowerText, p.pattern)
				if amount then
					-- Check for separators
					local separator
					for _, s in ipairs(p.separators) do
						if strfind(lineText, s) then
							separator = s
							-- Replace separator strings found in lineText with a single character "/", so we can use strsplit()
							lineText = string.gsub(lineText, s, "/")
							-- only need support for 1 kind of separator per line, we will use the first one found, so break out here
							break
						end
					end
					-- If this line has a separator, then we do the split and combine algorithm
					if separator then
						local splitText = Compost:Acquire(strsplit("/", lineText))
						for i, text in ipairs(splitText) do
							local lowerText = string.lower(text) -- convert to lower so we don't have to worry about same ratings with different cases
							-- Capture the increased amount
							local s, e, amount = strfind(lowerText, p.pattern)
							if amount then
								-- Capture the rating name
								local ratingID
								for _, v in ipairs(L["ratingNames"]) do
									if strfind(lowerText, v[1]) then
										ratingID = RatingBuster.RatingNameToID[v[1]]
										break
									end
								end
								if ratingID then
									-- calculate reverse value
									local reversedAmount = ReverseRating(tonumber(amount), ratingID, mylevel)
									-- build reversed string
									local reversedString
									-- check if rating is a skill type
									if ratingID == 1 or ratingID == 2 then
										reversedString = "("..format("%.2f", reversedAmount)..")"
									-- check if rating is resilience
									elseif ratingID == 15 then
										reversedString = "(-"..format("%.2f", reversedAmount).."%%%%)"
									else
										reversedString = "("..format("%.2f", reversedAmount).."%%%%)"
									end
									-- build converted string
									splitText[i] = string.gsub(text, p.pattern, string.gsub(strsub(text, s, e), "%d+", "%0 "..reversedString), 1)
								end
							end
						end -- for i, text in ipairs(splitText)
						lineText = strjoin(separator, unpack(splitText))
						Compost:Reclaim(splitText)
					else
						-- Capture the rating name
						local ratingID
						for _, v in ipairs(L["ratingNames"]) do
							if strfind(lowerText, v[1]) then
								ratingID = RatingBuster.RatingNameToID[v[1]]
								break
							end
						end
						if ratingID then
							-- calculate reverse value
							local reversedAmount = ReverseRating(tonumber(amount), ratingID, mylevel)
							-- build reversed string
							local reversedString
							-- check if rating is a skill type
							if ratingID == 1 or ratingID == 2 then
								reversedString = "("..format("%.2f", reversedAmount)..")"
							-- check if rating is resilience
							elseif ratingID == 15 then
								reversedString = "(-"..format("%.2f", reversedAmount).."%%%%)"
							else
								reversedString = "("..format("%.2f", reversedAmount).."%%%%)"
							end
							-- build converted string
							lineText = string.gsub(text, p.pattern, string.gsub(strsub(text, s, e), "%d+", "%0 "..reversedString), 1)
						end
					end
				end
			end
			-- SetText
			fontString:SetText(lineText)
		end -- if text then
	end -- for i = 2, tooltip:NumLines() do
	tooltip:Show()
end
