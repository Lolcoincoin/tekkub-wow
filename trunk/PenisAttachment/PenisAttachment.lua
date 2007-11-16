
local f = CreateFrame("Frame")
local frames, buttons = {}, {}


for i=1,INBOXITEMS_TO_DISPLAY do
	buttons[i] = getglobal("MailItem"..i.."Button")
	frames[i] = buttons[i]:CreateFontString(nil, "ARTWORK", "NumberFontNormal")
	frames[i]:SetPoint("BOTTOMRIGHT", -5, 2)

	local cod = getglobal("MailItem"..i.."ButtonCOD")
	cod:ClearAllPoints()
	cod:SetPoint("TOP", 0, -2)
end


hooksecurefunc("InboxFrame_Update", function()
	local offset = (InboxFrame.pageNum - 1) * INBOXITEMS_TO_DISPLAY
	for i=1,INBOXITEMS_TO_DISPLAY do
		local frametxt, attachments = frames[i], 0
		for j=1, ATTACHMENTS_MAX_RECEIVE do if GetInboxItem(i + offset, j) then attachments = attachments + 1 end end
		frametxt:SetText(attachments > 1 and attachments or "")
	end
end)
