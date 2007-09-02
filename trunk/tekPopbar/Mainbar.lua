
local users = {Bear = true, Cub = true, Tekkub = true, Wuffi = true, Beardyhead = true, Mishutka = true, Quinacridone = true, Fuhlameing = true, Beah = true}
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
	local id = ids[self][GetShapeshiftForm(true)] or ids[self][0]
	local oor, isUsable, notEnoughMana = IsActionInRange(id), IsUsableAction(id)
	local c = notEnoughMana and "blue" or oor == 0 and "red" or isUsable and "none" or "grey"
	icons[self]:SetVertexColor(unpack(colors[c]))
	if onupdates[self] then return onupdates[self](self, elapsed, ...) end
end


local function SetTooltip(frame)
	local id = ids[self][GetShapeshiftForm(true)] or ids[self][0]
	GameTooltip:SetOwner(frame, "ANCHOR_RIGHT")
	GameTooltip:SetAction(id)
end


local function HideTooltip(frame)
	GameTooltip:Hide()
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
	ids[mainbtn] = {[0] = actionID}
	icons[mainbtn] = _G["tekPopbar"..actionID.."Icon"]
	mainbtn:SetPoint("LEFT", anch1, "RIGHT", gap, 0)
	onupdates[mainbtn] = mainbtn:GetScript("OnUpdate")
	mainbtn:SetScript("OnUpdate", OnUpdate)
	mainbtn:SetScript("OnAttributeChanged", ActionButton_Update)
	mainbtn:HookScript("OnEnter", ActionButton_SetTooltip)
	mainbtn:HookScript("OnLeave", HideTooltip)
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
		ids[mainbtn][3] = 6*12 + actionID
		ids[mainbtn][5] = 7*12 + actionID
		ids[mainbtn][1] = 8*12 + actionID
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
		btn:SetAttribute("type", "action")
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

----------------------------------

local gap = 5
local _G = getfenv()
local _, myclass = UnitClass("player")

if myclass == "HUNTER" or myclass == "WARLOCK" then
	local base = CreateFrame("Button", nil, UIParent, "SecureActionButtonTemplate,SecureAnchorEnterTemplate")
	base:SetPoint("BOTTOMLEFT", tekPopbar12, "BOTTOMRIGHT", gap*2, 0)
	base:SetWidth(30)
	base:SetHeight(30)
	base:EnableMouse(true)
	base:RegisterForClicks("anyUp")
	base:SetAttribute("*childraise-OnEnter", true)
	base:SetAttribute("*childstate-OnEnter", "enter")
	base:SetAttribute("*childstate-OnLeave", "leave")
	base:SetAttribute("type", "macro")
	base:SetAttribute("macrotext", "/click FuzzyLogicFrame")
	base:SetNormalTexture("Interface\\Icons\\Spell_Holy_BlessingOfAgility")


	-- State header, god I hate this shit
	-- S0: No hover, no pet
	-- S1: No hover, pet
	-- S2: Hover, no pet
	-- S3: Hover, pet

	local hdr = CreateFrame("Frame", nil, base, "SecureStateHeaderTemplate")
	hdr:SetPoint("CENTER") hdr:SetWidth(2) hdr:SetHeight(2)
	hdr:SetAttribute("unit", "pet")
	hdr:SetAttribute("statemap-unitexists-true", "0:1;2:3")
	hdr:SetAttribute("statemap-unitexists-false", "1:0;3:2")
	RegisterStateDriver(hdr, "unitexists", "[pet] true; false")
	hdr:SetAttribute("statemap-anchor-enter", "0:2;1:3")
	hdr:SetAttribute("statemap-anchor-leave", ";")
	hdr:SetAttribute("delaystatemap-anchor-leave", "2:0;3:1")
	hdr:SetAttribute("delaytimemap-anchor-leave",  "2:1;3:1")
	hdr:SetAttribute("delayhovermap-anchor-leave", "2:true;3:true")
	base:SetAttribute("anchorchild", hdr)

	local parent = CreateFrame("Frame", nil, UIParent)
	parent:SetPoint("CENTER") parent:SetWidth(1) parent:SetHeight(1)
	parent:SetAttribute("showstates", "3")
	hdr:SetAttribute("addchild", parent)
	parent:Hide()

	local function makebutt(states, a1, a2, tex, ...)
		local f = CreateFrame("Button", nil, base, "SecureActionButtonTemplate")
		f:SetPoint(...)
		f:SetWidth(30)
		f:SetHeight(30)
		f:EnableMouse(true)
		f:RegisterForClicks("anyUp")
		f:SetAttribute("type", a1)
		f:SetAttribute(a1, a2)
		f:SetNormalTexture(tex)

		f:SetScript("OnEnter", PetActionButton_OnEnter)
		f:SetScript("OnLeave", PetActionButton_OnLeave)
		f.tooltipName = a2

		f:SetAttribute("showstates", states)
		hdr:SetAttribute("addchild", f)

		return f
	end

	local call = makebutt("2", "spell", "Call Pet", "Interface\\Icons\\Ability_Hunter_BeastCall", "BOTTOM", base, "TOP", 0, gap)
	local rez  = makebutt("2", "spell", "Revive Pet", "Interface\\Icons\\Ability_Hunter_BeastSoothe", "BOTTOM", call, "TOP", 0, gap)
	local tame = makebutt("2", "spell", "Tame Beast", "Interface\\Icons\\Ability_Hunter_BeastTaming", "BOTTOM", rez, "TOP", 0, gap)
	local lore = makebutt("2", "spell", "Beast Lore", "Interface\\Icons\\Ability_Physical_Taunt", "BOTTOM", tame, "TOP", gap, 0)

	local mend = makebutt("3", "spell", "Mend Pet", "Interface\\Icons\\Ability_Hunter_MendPet", "BOTTOM", base, "TOP", 0, gap)
	local kill = makebutt("3", "spell", "Kill Command", "Interface\\Icons\\Ability_Hunter_KillCommand", "BOTTOM", mend, "TOP", 0, gap)
	local eyes = makebutt("3", "spell", "Eyes of the Beast", "Interface\\Icons\\Ability_EyeOfTheOwl", "BOTTOM", kill, "TOP", 0, gap)
	local train = makebutt("3", "spell", "Beast Training", "Interface\\Icons\\Ability_Hunter_BeastCall02", "BOTTOM", PetActionButton8, "TOP", 0, gap)

	-- Spell_Nature_SpiritWolf - Dismiss

	for i=1,10 do
		local f = _G["PetActionButton"..i]
		f:SetParent(parent)
		f:ClearAllPoints()
	end

	PetActionButton1:SetPoint("BOTTOMLEFT", base, "BOTTOMRIGHT", gap, 0)
	PetActionButton2:SetPoint("LEFT", PetActionButton1, "RIGHT", gap, 0)
	PetActionButton3:SetPoint("LEFT", PetActionButton2, "RIGHT", gap, 0)

	PetActionButton4:SetPoint("BOTTOM", PetActionButton9, "TOP", 0, gap)
	PetActionButton5:SetPoint("BOTTOM", PetActionButton4, "TOP", 0, gap)
	PetActionButton6:SetPoint("BOTTOM", PetActionButton10, "TOP", 0, gap)
	PetActionButton7:SetPoint("BOTTOM", PetActionButton6, "TOP", 0, gap)

	PetActionButton8:SetPoint("BOTTOM", PetActionButton1, "TOP", 0, gap)
	PetActionButton9:SetPoint("BOTTOM", PetActionButton2, "TOP", 0, gap)
	PetActionButton10:SetPoint("BOTTOM", PetActionButton3, "TOP", 0, gap)

else
	local _G = getfenv()

	for i=1,10 do
		local f = _G["PetActionButton"..i]
		f:SetParent(UIParent)
		f:ClearAllPoints()
	end

	PetActionButton1:SetPoint("BOTTOMLEFT", tekPopbar12, "BOTTOMRIGHT", gap*2, 0)
	PetActionButton2:SetPoint("LEFT", PetActionButton1, "RIGHT", gap, 0)
	PetActionButton3:SetPoint("LEFT", PetActionButton2, "RIGHT", gap, 0)

	PetActionButton4:SetPoint("BOTTOM", PetActionButton9, "TOP", 0, gap)
	PetActionButton5:SetPoint("LEFT", PetActionButton4, "RIGHT", gap, 0)
	PetActionButton6:SetPoint("LEFT", PetActionButton5, "RIGHT", gap, 0)
	PetActionButton7:SetPoint("LEFT", PetActionButton6, "RIGHT", gap, 0)

	PetActionButton8:SetPoint("BOTTOM", PetActionButton1, "TOP", 0, gap)
	PetActionButton9:SetPoint("BOTTOM", PetActionButton2, "TOP", 0, gap)
	PetActionButton10:SetPoint("BOTTOM", PetActionButton3, "TOP", 0, gap)
end


