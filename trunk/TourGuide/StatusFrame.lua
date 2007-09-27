

local TourGuide = TourGuide
local OptionHouse = LibStub("OptionHouse-1.1")
local ww = WidgetWarlock


local function GetQuadrant(frame)
	local x,y = frame:GetCenter()
	if not x or not y then return "BOTTOMLEFT", "BOTTOM", "LEFT" end
	local hhalf = (x > UIParent:GetWidth()/2) and "RIGHT" or "LEFT"
	local vhalf = (y > UIParent:GetHeight()/2) and "TOP" or "BOTTOM"
	return vhalf..hhalf, vhalf, hhalf
end


local f = CreateFrame("Button", nil, UIParent)
f:SetPoint("BOTTOMRIGHT", QuestWatchFrame, "TOPRIGHT", 0, -15)
f:SetHeight(32)
f:SetFrameStrata("LOW")
f:EnableMouse(true)
f:RegisterForClicks("anyUp")
f:SetBackdrop(ww.TooltipBorderBG)
f:SetBackdropColor(0,0,0,0.3)
f:SetBackdropBorderColor(0,0,0,0.7)

local check = ww.SummonCheckBox(20, f, "LEFT", 8, 0)
local icon = ww.SummonTexture(f, "ARTWORK", 24, 24, nil, "LEFT", check, "RIGHT", 4, 0)
local text = ww.SummonFontString(f, "OVERLAY", "GameFontNormal", nil, "RIGHT", -12, 0)
text:SetPoint("LEFT", icon, "RIGHT", 4, 0)

local item = CreateFrame("Button", nil, UIParent, "SecureActionButtonTemplate")
item:SetFrameStrata("LOW")
item:SetHeight(36)
item:SetWidth(36)
item:SetPoint("BOTTOMRIGHT", QuestWatchFrame, "TOPRIGHT", 0, 18)
item:RegisterForClicks("anyUp")
local itemicon = ww.SummonTexture(item, "ARTWORK", 24, 24, "Interface\\Icons\\INV_Misc_Bag_08")
itemicon:SetAllPoints(item)
item:Hide()

local f2 = CreateFrame("Frame", nil, UIParent)
local f2anchor = "RIGHT"
f2:SetHeight(32)
f2:SetWidth(100)
local text2 = ww.SummonFontString(f2, "OVERLAY", "GameFontNormal", nil, "RIGHT", -12, 0)
local icon2 = ww.SummonTexture(f2, "ARTWORK", 24, 24, nil, "RIGHT", text2, "LEFT", -4, 0)
local check2 = ww.SummonCheckBox(20, f2, "RIGHT", icon2, "LEFT", -4, 0)
check2:SetChecked(true)
f2:Hide()


local elapsed, oldsize, newsize
f2:SetScript("OnUpdate", function(self, el)
	elapsed = elapsed + el
	if elapsed > 1 then
		self:Hide()
		icon:SetAlpha(1)
		text:SetAlpha(1)
		f:SetWidth(newsize)
	else
		self:SetPoint(f2anchor, f, f2anchor, 0, elapsed*40)
		self:SetAlpha(1 - elapsed)
		text:SetAlpha(elapsed)
		icon:SetAlpha(elapsed)
		f:SetWidth(oldsize + (newsize-oldsize)*elapsed)
	end
end)


function TourGuide:PositionStatusFrame()
	if self.db.profile.statusframepoint then
		f:ClearAllPoints()
		f:SetPoint(self.db.profile.statusframepoint, self.db.profile.statusframex, self.db.profile.statusframey)
	end

	if self.db.profile.itemframepoint then
		item:ClearAllPoints()
		item:SetPoint(self.db.profile.itemframepoint, self.db.profile.itemframex, self.db.profile.itemframey)
	end
end


function TourGuide:SetText(i)
	self.current = i
	local action, quest, note, logi, complete, hasitem = self:GetObjectiveInfo(i)

	local newtext = (quest or"???")..(note and " [?]" or "")

	if text:GetText() ~= newtext or icon:GetTexture() ~= self.icons[action] then
		oldsize = f:GetWidth()
		icon:SetAlpha(0)
		text:SetAlpha(0)
		elapsed = 0
		f2:SetWidth(f:GetWidth())
		f2anchor = select(3, GetQuadrant(f))
		f2:ClearAllPoints()
		f2:SetPoint(f2anchor, f, f2anchor, 0, 0)
		f2:SetAlpha(1)
		icon2:SetTexture(icon:GetTexture())
		text2:SetText(text:GetText())
		f2:Show()
	end

	icon:SetTexture(self.icons[action])
	text:SetText(newtext)
	check:SetChecked(false)
	if i == 1 then f:SetWidth(72 + text:GetWidth()) end
	newsize = 72 + text:GetWidth()
end


local mapped = {}
function TourGuide:UpdateStatusFrame()
	local nextstep

	for i in ipairs(self.actions) do
		local name = self.quests[i]
		if not self.turnedin[name] and not nextstep then
			local action, name, note, logi, complete, hasitem, turnedin, quest, useitem, optional, lootitem, lootqty = self:GetObjectiveInfo(i)
			self:Debug(11, "UpdateStatusFrame", i, action, name, note, logi, complete, hasitem, turnedin, quest, useitem, optional, lootitem, lootqty)
			local hasuseitem = useitem and self:FindBagSlot(useitem)

			if action == "NOTE" and not optional and lootitem and GetItemCount(lootitem) >= lootqty then return self:SetTurnedIn(i, true) end

			local incomplete
			if action == "ACCEPT" then incomplete = (not optional or hasitem or hasuseitem) and not logi
			elseif action == "TURNIN" then incomplete = not optional or logi and complete
			elseif action == "COMPLETE" then incomplete = not complete and (not optional or logi)
			elseif action == "NOTE" then incomplete = not optional or lootitem and GetItemCount(lootitem) >= lootqty
			else incomplete = not logi end

			if incomplete then nextstep = i end

			if action == "COMPLETE" and logi then
				local j = i
				repeat
					action, _, _, logi, complete = self:GetObjectiveInfo(j)
					if action == "COMPLETE" and logi and not complete then AddQuestWatch(logi) -- Watch if we're in a 'COMPLETE' block
					elseif action == "COMPLETE" and logi then RemoveQuestWatch(logi) end -- or unwatch if done
					j = j + 1
				until action ~= "COMPLETE"
			end
		end
	end
	QuestLog_Update()
	QuestWatch_Update()

	if not nextstep and self:LoadNextGuide() then return self:UpdateStatusFrame() end

	if not nextstep then return end

	self:SetText(nextstep)
	self.current = nextstep
	local action, quest, note, logi, complete, hasitem, turnedin, fullquest, useitem, optional = self:GetObjectiveInfo(nextstep)


	-- TomTom coord mapping
	if note and (TomTom or Cartographer_Waypoints) and not mapped[action..quest] then
		mapped[action..quest] = true
		for x,y in note:gmatch("%(([%d.]+),([%d.]+)%)") do
            if (TomTom) then
                TomTom:AddWaypoint(tonumber(x), tonumber(y), quest)
            elseif (Cartographer_Waypoints) then
                Cartographer_Waypoints:AddLHWaypoint(nil, nil, tonumber(x), tonumber(y), note)
            end

		end
	end


	local newtext = (quest or "???")..(note and " [?]" or "")

	if text:GetText() ~= newtext or icon:GetTexture() ~= self.icons[action] then
		oldsize = f:GetWidth()
		icon:SetAlpha(0)
		text:SetAlpha(0)
		elapsed = 0
		f2:SetWidth(f:GetWidth())
		f2anchor = select(3, GetQuadrant(f))
		f2:ClearAllPoints()
		f2:SetPoint(f2anchor, f,f2anchor, 0, 0)
		f2:SetAlpha(1)
		icon2:SetTexture(icon:GetTexture())
		text2:SetText(text:GetText())
		f2:Show()
	end

	icon:SetTexture(self.icons[action])
	text:SetText(newtext)
	check:SetChecked(false)
	if not f2:IsVisible() then f:SetWidth(72 + text:GetWidth()) end
	newsize = 72 + text:GetWidth()

	local tex = useitem and select(10, GetItemInfo(tonumber(useitem)))
	if tex then
		itemicon:SetTexture(tex)
		item:SetAttribute("type1", "item")
		item:SetAttribute("item1", "item:"..useitem)
		item:Show()
	else item:Hide() end

	self:UpdateOHPanel()
end


f:SetScript("OnClick", function(self, btn)
	if btn == "RightButton" then
		OptionHouse:Open("Tour Guide", "Objectives")
	else
		local i = TourGuide:GetQuestLogIndexByName()
		if i then SelectQuestLogEntry(i) end
		ShowUIPanel(QuestLogFrame)
	end
end)


check:SetScript("OnClick", function(self, btn) TourGuide:SetTurnedIn() end)


item:HookScript("OnClick", function()
	if TourGuide:GetCurrentObjectiveInfo() == "USE" then TourGuide:SetTurnedIn() end
end)


local function ShowTooltip(self)
	local tip = TourGuide.notes[TourGuide.current]
	if not tip then return end

 	GameTooltip:SetOwner(self, "ANCHOR_NONE")
	local quad, vhalf, hhalf = GetQuadrant(self)
	local anchpoint = vhalf..(hhalf == "LEFT" and "RIGHT" or "LEFT")
	TourGuide:Debug(11, "Setting tooltip anchor", anchpoint, quad, hhalf, vhalf)
	GameTooltip:SetPoint(quad, self, anchpoint)
	GameTooltip:SetText(tip, nil, nil, nil, nil, true)
end


f:SetScript("OnLeave", function() GameTooltip:Hide() end)
f:SetScript("OnEnter", ShowTooltip)


local function GetUIParentAnchor(frame)
	local w, h, x, y = UIParent:GetWidth(), UIParent:GetHeight(), frame:GetCenter()
	local hhalf, vhalf = (x > w/2) and "RIGHT" or "LEFT", (y > h/2) and "TOP" or "BOTTOM"
	local dx = hhalf == "RIGHT" and math.floor(frame:GetRight() + 0.5) - w or math.floor(frame:GetLeft() + 0.5)
	local dy = vhalf == "TOP" and math.floor(frame:GetTop() + 0.5) - h or math.floor(frame:GetBottom() + 0.5)

	return vhalf..hhalf, dx, dy
end


f:RegisterForDrag("LeftButton")
f:SetMovable(true)
f:SetClampedToScreen(true)
f:SetScript("OnDragStart", function(frame)
	GameTooltip:Hide()
	frame:StartMoving()
end)
f:SetScript("OnDragStop", function(frame)
	frame:StopMovingOrSizing()
	TourGuide:Debug(1, "Status frame moved", GetUIParentAnchor(frame))
	TourGuide.db.profile.statusframepoint, TourGuide.db.profile.statusframex, TourGuide.db.profile.statusframey = GetUIParentAnchor(frame)
	frame:ClearAllPoints()
	frame:SetPoint(TourGuide.db.profile.statusframepoint, TourGuide.db.profile.statusframex, TourGuide.db.profile.statusframey)
	ShowTooltip(frame)
end)


item:RegisterForDrag("LeftButton")
item:SetMovable(true)
item:SetClampedToScreen(true)
item:SetScript("OnDragStart", item.StartMoving)
item:SetScript("OnDragStop", function(frame)
	frame:StopMovingOrSizing()
	TourGuide:Debug(1, "Item frame moved", GetUIParentAnchor(frame))
	TourGuide.db.profile.itemframepoint, TourGuide.db.profile.itemframex, TourGuide.db.profile.itemframey = GetUIParentAnchor(frame)
end)

