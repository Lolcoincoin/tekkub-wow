
local _, _, _, enabled = GetAddOnInfo("tekPopBar")
if not enabled then return end

local _, class = UnitClass("player")

local usebars = {4, 10}
if class ~= "DRUID" and class ~= "PRIEST" then table.insert(usebars, 7) end
if class ~= "DRUID" then table.insert(usebars, 8) end
if class ~= "DRUID" then table.insert(usebars, 9) end


local gap = -6


local function HideTooltip(frame)
	GameTooltip:Hide()
end


local anch1 = MultiBarRightButton1
for actionID=36,25,-1 do
	local mainbtn = CreateFrame("CheckButton", "tekPopbar"..actionID, UIParent, "ActionBarButtonTemplate,SecureAnchorEnterTemplate")
	_G["tekPopbar"..actionID.."Name"]:Hide()
	_G["tekPopbar"..actionID.."Name"].Show = _G["tekPopbar"..actionID.."Name"].Hide
	mainbtn:SetPoint("BOTTOM", anch1, "TOP", 0, -gap)
	mainbtn:SetScript("OnAttributeChanged", ActionButton_Update)
	mainbtn:HookScript("OnEnter", ActionButton_SetTooltip)
	mainbtn:HookScript("OnLeave", HideTooltip)
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
		_G["tekPopbar"..btnID.."Name"]:Hide()
		_G["tekPopbar"..btnID.."Name"].Show = _G["tekPopbar"..btnID.."Name"].Hide
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


tekPopbar36:ClearAllPoints()
tekPopbar36:SetPoint("BOTTOMRIGHT", WorldFrame, "BOTTOMRIGHT", 0, -gap)

local function movetracker()
		QuestWatchFrame:ClearAllPoints()
		QuestWatchFrame:SetPoint("TOP", MinimapCluster, "BOTTOM", 0, 0)
		QuestWatchFrame:SetPoint("RIGHT", tekPopbar25, "LEFT", -6, 0)
end

hooksecurefunc("UIParent_ManageFramePositions", movetracker)
movetracker()