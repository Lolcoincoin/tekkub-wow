
------------------------------
--      Are you local?      --
------------------------------

local last, mailshown
local SendMailNameEditBox = SendMailNameEditBox


---------------------------------
--      Addon Declaration      --
---------------------------------

PriorityMail = DongleStub("Dongle-Beta0"):New("PriorityMail")

function PriorityMail:Enable()
	SendMailNameEditBox:SetHistoryLines(15)

	self:RegisterEvent("MAIL_SHOW", function() mailshown = true end)
	self:RegisterEvent("MAIL_CLOSED", function() mailshown = false end)
end


-------------------------------
--      Auto-fill Hooks      --
-------------------------------

local orig1 = SendMailFrame_Reset
local post1 = function(...)
	if last then
		SendMailNameEditBox:SetText(last)
		SendMailNameEditBox:HighlightText()
	end
	return ...
end
SendMailFrame_Reset = function(...)
	if not last then last = SendMailNameEditBox:GetText() end
	return post1(orig1(...))
end


local orig2 = SendMailFrame_SendMail
SendMailFrame_SendMail = function(...)
	last = SendMailNameEditBox:GetText()
	SendMailNameEditBox:AddHistoryLine(last)
	return orig2(...)
end


local orig3 = MailFrameTab_OnClick
local post3 = function(...)
	if last and not SendMailNameEditBox:GetText() then
		SendMailNameEditBox:SetText(last)
		SendMailNameEditBox:HighlightText()
	end
	return ...
end
MailFrameTab_OnClick = function(tab, ...)
	return post3(orig3(tab, ...))
end


--------------------------------------
--      Alt-click item filling      --
--------------------------------------

local orig4 = GameTooltip:GetScript("OnTooltipSetItem")
GameTooltip:SetScript("OnTooltipSetItem", function(tooltip, ...)
	if mailshown and SendMailFrame:IsVisible() and not CursorHasItem() then
		tooltip:AddLine("Alt-Click to mail this item.")
	end
	return orig4(tooltip, ...)
end)


local orig5 = ContainerFrameItemButton_OnModifiedClick
ContainerFrameItemButton_OnModifiedClick = function(button, ...)
	if mailshown and button == "LeftButton" and IsAltKeyDown() and SendMailFrame:IsVisible() and not CursorHasItem() then
		local bag, slot = this:GetParent():GetID(), this:GetID()
		local texture, count = GetContainerItemInfo(bag, slot)
		PickupContainerItem(bag, slot)
		ClickSendMailItemButton()
		local smf_texture, smf_count = select(2, GetSendMailItem())
		if SendMailNameEditBox:GetText() and texture == smf_texture and count == smf_count then
			SendMailFrame_SendMail()
		end
	else return orig5(button, ...) end
end

