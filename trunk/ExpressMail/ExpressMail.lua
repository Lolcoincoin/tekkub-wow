

local gttsiiHook = function(tooltip, index, ...)
	local _, _, _, _, money, COD, _, hasItem, _, wasReturned, _, canReply = GetInboxHeaderInfo(index)
	local bodyText, _, isTakeable = GetInboxText(index)
	if money > 0 or COD > 0 or hasItem or isTakeable then tooltip:AddLine("Shift - Take Item") end
--~ 	else tooltip:AddLine("Shift - Delete Mail") end

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
 	if IsShiftKeyDown() then
		if money > 0 then TakeInboxMoney(index)
		elseif COD > 0 then return
		elseif hasitem then TakeInboxItem(index) end
--~ 		else DeleteInboxItem(index) end
	elseif IsControlKeyDown() then
		if wasReturned or not canReply then return end
		ReturnInboxItem(index)
	else ifoc(index, ...) end
end


