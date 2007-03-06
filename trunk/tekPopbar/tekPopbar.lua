
local anchor = CreateFrame("CheckButton", "tekPopbarRight1", UIParent, "ActionBarButtonTemplate,SecureAnchorEnterTemplate")
anchor:SetPoint("TOPRIGHT", MultiBarRightButton1, "TOPRIGHT")
anchor:SetScript("OnAttributeChanged", ActionButton_Update)
anchor:SetAttribute("*type*", "action")
anchor:SetAttribute("*action*", 25)
anchor:SetAttribute("*childraise-OnEnter", true)
anchor:SetAttribute("*childstate-OnEnter", "enter")
anchor:SetAttribute("*childstate-OnLeave", "leave")

local hdr = CreateFrame("Frame", "tekPopbarHdr", anchor, "SecureStateHeaderTemplate")
hdr:SetPoint("CENTER") hdr:SetWidth(2) hdr:SetHeight(2)
hdr:SetAttribute("statemap-anchor-enter", "1")
hdr:SetAttribute("statemap-anchor-leave", ";")
hdr:SetAttribute("delaystatemap-anchor-leave", "1:0")
hdr:SetAttribute("delaytimemap-anchor-leave",  "1:1")
hdr:SetAttribute("delayhovermap-anchor-leave", "1:true")
anchor:SetAttribute("anchorchild", hdr)

local anch = anchor
for i=2,12 do
	local btn = CreateFrame("CheckButton", "tekPopbarRight"..i, hdr, "ActionBarButtonTemplate")
	btn:SetPoint("TOP", anch, "BOTTOM", 0, -6)
	btn:SetScript("OnAttributeChanged", ActionButton_Update)
	btn:SetAttribute("hidestates", 0)
	btn:SetAttribute("*type*", "action")
	btn:SetAttribute("*action*", 24+i)
	hdr:SetAttribute("addchild", btn)
	anch = btn
end
for i=1,12 do
	local btn = CreateFrame("CheckButton", "tekPopbarLeft"..i, hdr, "ActionBarButtonTemplate")
	btn:SetPoint("TOP", anch, "BOTTOM", 0, -6)
	btn:SetScript("OnAttributeChanged", ActionButton_Update)
	btn:SetAttribute("hidestates", 0)
	btn:SetAttribute("*type*", "action")
	btn:SetAttribute("*action*", 36+i)
	hdr:SetAttribute("addchild", btn)
	anch = btn
end

tekPopbarLeft1:ClearAllPoints()
tekPopbarLeft1:SetPoint("RIGHT", tekPopbarRight1, "LEFT", -6, 0)



