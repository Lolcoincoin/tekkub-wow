
local gtt = GameTooltip
local l1, l2, l3, l4 = GameTooltipTextLeft1, GameTooltipTextLeft2, GameTooltipTextLeft3, GameTooltipTextLeft4


tekGuildTip = Dongle:New("tekGuildTip")


function tekGuildTip:Enable()
	self:RegisterEvent("UPDATE_MOUSEOVER_UNIT")
end


function tekGuildTip:UPDATE_MOUSEOVER_UNIT()
	self:ModifyTooltip("mouseover")
end


function tekGuildTip:ModifyTooltip(unit)
	if not UnitExists(unit) or not UnitPlayerControlled(unit) then return end

	local guildName = GetGuildInfo(unit)
	if guildName then
		local line2orig = l2:GetText()
		if not line2orig or string.byte(line2orig) == 60 then return end

		if gtt:NumLines() == 3 then
			local line3orig = l3:GetText()
			l2:SetText("<"..guildName..">")
			l3:SetText(line2orig)
			gtt:AddLine(line3orig, 1.0, 1.0, 1.0)
		else
			l2:SetText("<"..guildName..">")
			gtt:AddLine(line2orig, 1.0, 1.0, 1.0)
		end
	end
	if UnitIsAFK(unit) then
		local lineText = l1:GetText()
		if lineText and not string.find(lineText, CHAT_FLAG_AFK) then
			l1:SetText(lineText.." "..CHAT_FLAG_AFK)
		end
	elseif UnitIsDND(unit) then
		local lineText = l1:GetText()
		if lineText and not string.find(lineText, CHAT_FLAG_DND) then
			l1:SetText(lineText.." "..CHAT_FLAG_DND)
		end
	end
	gtt:Show()
end


---------------------
--      Hooks      --
---------------------

local orig1 = GameTooltip.SetUnit
local function posthook(unit, ...)
	tekGuildTip:ModifyTooltip(unit)
	return ...
end
GameTooltip.SetUnit = function(self, unit, ...)
	return posthook(unit, orig1(self, unit, ...))
end


local orig2 = GameTooltip_OnHide
GameTooltip_OnHide = function(...)
	local line2orig = l2:GetText()
	if line2orig and string.byte(line2orig) == 60 then
		-- We added a line, we need to remove it or it'll show up in all future tooltips
		l4:SetText()
		l4:Hide()
		l3:SetText()
		l3:Hide()
	end
	return orig2(...)
end


