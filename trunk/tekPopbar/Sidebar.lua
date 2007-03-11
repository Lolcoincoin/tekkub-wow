
local _, _, _, enabled = GetAddOnInfo("tekPopBar")
if not enabled then return end


local usebars = {4, 10}
if true then table.insert(usebars, 7) end
if true then table.insert(usebars, 8) end
if true then table.insert(usebars, 9) end


local gap = -6


local anch1 = MultiBarRightButton1
for actionID=25,36 do
	local mainbtn = CreateFrame("CheckButton", "tekPopbar"..actionID, UIParent, "ActionBarButtonTemplate,SecureAnchorEnterTemplate")
	mainbtn:SetPoint("TOP", anch1, "BOTTOM", 0, gap)
	mainbtn:SetScript("OnAttributeChanged", ActionButton_Update)
	mainbtn:SetAttribute("*type*", "action")
	mainbtn:SetAttribute("*action*", actionID)
	mainbtn:SetAttribute("*childraise-OnEnter", true)
	mainbtn:SetAttribute("*childstate-OnEnter", "enter")
	mainbtn:SetAttribute("*childstate-OnLeave", "leave")

	local hdr = CreateFrame("Frame", "tekPopbarHdr"..actionID, mainbtn, "SecureStateHeaderTemplate")
	hdr:SetPoint("CENTER") hdr:SetWidth(2) hdr:SetHeight(2)
	hdr:SetAttribute("statemap-anchor-enter", "1")
	hdr:SetAttribute("statemap-anchor-leave", ";")
	hdr:SetAttribute("delaystatemap-anchor-leave", "1:0")
	hdr:SetAttribute("delaytimemap-anchor-leave",  "1:1")
	hdr:SetAttribute("delayhovermap-anchor-leave", "1:true")
	mainbtn:SetAttribute("anchorchild", hdr)

	local anch2 = mainbtn
	for _,bar in ipairs(usebars) do
		local btnID = actionID - 36 + bar*12
		local btn = CreateFrame("CheckButton", "tekPopbar"..btnID, hdr, "ActionBarButtonTemplate")
		btn:SetScript("OnAttributeChanged", ActionButton_Update)
		btn:SetAttribute("hidestates", 0)
		btn:SetAttribute("*type*", "action")
		btn:SetAttribute("*action*", btnID)
		hdr:SetAttribute("addchild", btn)
		btn:SetPoint("RIGHT", anch2, "LEFT", gap, 0)
		anch2 = btn
	end

	anch1 = mainbtn
end


tekPopbar25:ClearAllPoints()
--~ tekPopbar25:SetPoint("TOPRIGHT", MultiBarRightButton1, "TOPRIGHT", gap, 0)
tekPopbar25:SetPoint("TOPRIGHT", UIParent, "BOTTOMRIGHT", 0, 598)

local function movetracker()
	QuestWatchFrame:ClearAllPoints()
	QuestWatchFrame:SetPoint("TOPRIGHT", tekPopbar25, "TOPLEFT", -6, 0)
end

hooksecurefunc("UIParent_ManageFramePositions", movetracker)
movetracker()