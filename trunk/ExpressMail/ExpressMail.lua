
local stickyclick


local gttsiiHook = function(tooltip, index, ...)
	local _, _, _, _, money, COD, _, hasItem, _, wasReturned, _, canReply = GetInboxHeaderInfo(index)
	if money > 0 or COD > 0 or hasItem then tooltip:AddLine("Shift - Take Item") end
	if not wasReturned and canReply then tooltip:AddLine("Ctrl - Return Item") end
	return ...
end
local gttsii = GameTooltip.SetInboxItem
GameTooltip.SetInboxItem = function(tooltip, index, ...)
	return gttsiiHook(tooltip, index, gttsii(tooltip, index, ...))
end


local ifoc = InboxFrame_OnClick
InboxFrame_OnClick = function(index, ...)
	local _, _, _, _, money, COD, _, hasItem, _, wasReturned, _, canReply = GetInboxHeaderInfo(index)
 	if IsShiftKeyDown() or stickyclick then
		if money > 0 then TakeInboxMoney(index)
		elseif COD > 0 then return
		elseif hasItem then TakeInboxItem(index) end
	elseif IsControlKeyDown() and not wasReturned and canReply then ReturnInboxItem(index)
	else ifoc(index, ...) end
end


local sticky = CreateFrame("CheckButton", "ExpressMailCheck", InboxFrame, "OptionsCheckButtonTemplate")
sticky:SetWidth(22)
sticky:SetHeight(22)
sticky:SetPoint("TOPLEFT", 80, -50)
local stickylabel = sticky:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
stickylabel:SetPoint("LEFT", sticky, "RIGHT", 5, 0)
stickylabel:SetText("Super express mode")
sticky:SetScript("OnClick", function() stickyclick = not stickyclick end)
sticky:SetScript("OnHide", function(self)
	stickyclick = false
	self:SetChecked(false)
end)
