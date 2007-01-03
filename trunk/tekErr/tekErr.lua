
local cf = ChatFrame5
local linkstr = "|cffff4040|Htekerr:%s|h%s|h|r"

ScriptErrors.Show = function(objData)
	cf:AddMessage(string.format(linkstr, debugstack(), ScriptErrors_Message:GetText()))
end


local f = CreateFrame("Frame")
f:SetScript("OnEvent", function(self, ...)
	cf:AddMessage(string.join(", ", ...), 0.0, 1.0, 1.0)
end)
f:RegisterEvent("ADDON_ACTION_FORBIDDEN")
--~ f:RegisterEvent("ADDON_ACTION_BLOCKED")


local lastName
local orig = SetItemRef
SetItemRef = function(link, text, button, ...)
	local _, _, msg = string.find(link, "tekerr:(.+)");
	if msg then
		if ItemRefTooltip:IsVisible() and lastName and lastName == msg then
			HideUIPanel(ItemRefTooltip)
			lastName = nil
			return
		else
			lastName = msg

			ShowUIPanel(ItemRefTooltip)
			if not ItemRefTooltip:IsVisible() then ItemRefTooltip:SetOwner(UIParent, "ANCHOR_PRESERVE") end

			ItemRefTooltip:ClearLines()
			ItemRefTooltip:AddLine(text, 1,0,0)
			ItemRefTooltip:AddLine(msg)
			ItemRefTooltip:Show()
		end

		return
	end

	lastName = nil
	orig(link, text, button, ...)
end

