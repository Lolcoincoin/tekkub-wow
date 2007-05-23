
local GameTooltip, GameTooltipTextLeft1 = GameTooltip, GameTooltipTextLeft1
local GameTooltipTextLeft2, GameTooltipTextLeft3 = GameTooltipTextLeft2, GameTooltipTextLeft3


local orig = GameTooltip:GetScript("OnTooltipSetUnit")
GameTooltip:SetScript("OnTooltipSetUnit", function(...)
	if GameTooltip:IsUnit("mouseover") then
		local unit = "mouseover"
		if not UnitExists(unit) or not UnitPlayerControlled(unit) then return end

		local guildName = GetGuildInfo(unit)
		if guildName then
			local line2orig = GameTooltipTextLeft2:GetText()
			if not line2orig or string.byte(line2orig) == 60 then return end

			if GameTooltip:NumLines() == 3 then
				local line3orig = GameTooltipTextLeft3:GetText()
				GameTooltipTextLeft2:SetText(string.join("", "<", guildName, ">"))
				GameTooltipTextLeft3:SetText(line2orig)
				GameTooltip:AddLine(line3orig, 1.0, 1.0, 1.0)
			else
				GameTooltipTextLeft2:SetText(string.join("", "<", guildName, ">"))
				GameTooltip:AddLine(line2orig, 1.0, 1.0, 1.0)
			end
		end
		if UnitIsAFK(unit) then
			local lineText = GameTooltipTextLeft1:GetText()
			if lineText and not string.find(lineText, CHAT_FLAG_AFK) then
				GameTooltipTextLeft1:SetText(string.join(" ", lineText, CHAT_FLAG_AFK))
			end
		elseif UnitIsDND(unit) then
			local lineText = GameTooltipTextLeft1:GetText()
			if lineText and not string.find(lineText, CHAT_FLAG_DND) then
				GameTooltipTextLeft1:SetText(string.join(" ", lineText, CHAT_FLAG_DND))
			end
		end
	end
	GameTooltip:Show()
	if orig then return orig(...) end
end)
