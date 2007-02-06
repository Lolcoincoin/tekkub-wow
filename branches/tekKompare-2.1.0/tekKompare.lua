
local tekKompareTooltip1, tekKompareTooltip2
local ShoppingTooltip1, ShoppingTooltip2 = ShoppingTooltip1, ShoppingTooltip2


local function SetTip(frame, link, offset, anchor1, anchorframe, anchor2, dx, dy)
	if not frame:SetHyperlinkCompareItem(link, offset) then return end
	frame:SetOwner(frame, "ANCHOR_NONE")
	frame:ClearAllPoints()
	frame:SetClampedToScreen(true)
	frame:SetPoint(anchor1, anchorframe, anchor2, dx, dy)
	frame:SetHyperlinkCompareItem(link, offset)
	frame:Show()
end


local function SetTips(frame, tooltip1, tooltip2)
	local _, link, f = frame:GetItem(), GetMouseFocus() and GetMouseFocus():GetName()
	if not link or f and (f == "WorldFrame" or string.find(f, "^Character.*Slot$") or string.find(f, "^TempEnchant%d+$")) then return end

	local anchor1, anchor2, tipright = "TOPLEFT", "TOPRIGHT", frame:GetRight()
	if tipright and tipright >= (UIParent:GetRight()/2) then anchor1, anchor2 = anchor2, anchor1 end

	SetTip(tooltip1, 1, anchor1, frame, anchor2, 0, -10)
	SetTip(tooltip2, 2, anchor1, tooltip1, anchor2, 0, 0)
end


local orig1 = GameTooltip:GetScript("OnTooltipSetItem")
GameTooltip:SetScript("OnTooltipSetItem", function(frame, ...)
	if not ShoppingTooltip1:IsVisible() then SetTips(frame, ShoppingTooltip1, ShoppingTooltip2) end
	if orig1 then return orig1(frame, ...) end
end)


local orig2 = ItemRefTooltip:GetScript("OnTooltipSetItem")
ItemRefTooltip:SetScript("OnTooltipSetItem", function(frame, ...)
	if not tekKompareTooltip1 then
		tekKompareTooltip1 = CreateFrame("GameTooltip", "tekKompareTooltip1", ItemRefTooltip, "ShoppingTooltipTemplate")
		tekKompareTooltip2 = CreateFrame("GameTooltip", "tekKompareTooltip2", ItemRefTooltip, "ShoppingTooltipTemplate")
		tekKompareTooltip1:SetFrameStrata("TOOLTIP")
		tekKompareTooltip2:SetFrameStrata("TOOLTIP")
	end

	SetTips(frame, tekKompareTooltip1, tekKompareTooltip2)
	if orig2 then return orig2(frame, ...) end
end)


