
local users = {Bear = true, Cub = true, Tekkub = true, Wuffi = true, Beardyhead = true, Mishutka = true, Quinacridone = true}
if not users[UnitName("player")] then return DisableAddOn("tekPopBar") end


local _, class = UnitClass("player")
local usebars = {2,5,6}
local gap = 5
local icons, ids, onupdates = {}, {}, {}
local colors = {
	none = {1.0, 1.0, 1.0},
	grey = {0.4, 0.4, 0.4},
	blue = {0.1, 0.3, 1.0},
	red  = {0.8, 0.1, 0.1},
}

-- cat = 7, moon/tree = 8, bear = 9
-- battle = 7, def = 8, berz = 9
-- stealth = 7

local function OnUpdate(self, elapsed, ...)
	local id = ids[self]
	local oor, isUsable, notEnoughMana = IsActionInRange(id), IsUsableAction(id)
	local c = notEnoughMana and "blue" or oor == 0 and "red" or isUsable and "none" or "grey"
	icons[self]:SetVertexColor(unpack(colors[c]))
	if onupdates[self] then return onupdates[self](self, elapsed, ...) end
end


-----------------------------------
--      Create mah buttons!      --
-----------------------------------

local _G = getfenv()
local anch1 = ChatFrame1

local driver = CreateFrame("Frame", nil, UIParent, "SecureStateDriverTemplate")
if class == "DRUID" then
	driver:SetAttribute("statemap-stance", "$input")
	driver:SetAttribute("statebutton", "1:bear;3:cat;5:moon")
end

for actionID=1,12 do
	local mainbtn = CreateFrame("CheckButton", "tekPopbar"..actionID, driver, "ActionBarButtonTemplate,SecureAnchorEnterTemplate")
	ids[mainbtn] = actionID
	icons[mainbtn] = _G["tekPopbar"..actionID.."Icon"]
	mainbtn:SetPoint("LEFT", anch1, "RIGHT", gap, 0)
	onupdates[mainbtn] = mainbtn:GetScript("OnUpdate")
	mainbtn:SetScript("OnUpdate", OnUpdate)
	mainbtn:SetScript("OnAttributeChanged", ActionButton_Update)
	if class == "DRUID" then
		driver:SetAttribute('addchild', mainbtn)
		mainbtn:SetAttribute('useparent-statebutton', 'true')
	end
	mainbtn:SetAttribute("*childraise-OnEnter", true)
	mainbtn:SetAttribute("*childstate-OnEnter", "enter")
	mainbtn:SetAttribute("*childstate-OnLeave", "leave")
	if class == "DRUID" then
		mainbtn:SetAttribute("*action-cat", 6*12 + actionID) -- cat
		mainbtn:SetAttribute("*action-moon", 7*12 + actionID) -- moonkin/tree
		mainbtn:SetAttribute("*action-bear", 8*12 + actionID) -- bear
	end
	mainbtn:SetAttribute("*action*", actionID)


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
		local btnID = actionID - 12 + bar*12
		local btn = CreateFrame("CheckButton", "tekPopbar"..btnID, hdr, "ActionBarButtonTemplate")
		ids[btn] = btnID
		icons[btn] = _G["tekPopbar"..btnID.."Icon"]
		btn:SetScript("OnAttributeChanged", ActionButton_Update)
		btn:SetAttribute("hidestates", 0)
		btn:SetAttribute("*type*", "action")
		btn:SetAttribute("*action*", btnID)
		hdr:SetAttribute("addchild", btn)
		btn:SetPoint("BOTTOM", anch2, "TOP", 0, gap)
		anch2 = btn
	end

	anch1 = mainbtn
end


tekPopbar1:ClearAllPoints()
tekPopbar1:SetPoint("BOTTOMLEFT", ChatFrame1, "TOPLEFT", 0, 10)

MainMenuBar:Hide()

