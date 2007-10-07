

local TourGuide = TourGuide
local OptionHouse = LibStub("OptionHouse-1.1")
local ww = WidgetWarlock
WidgetWarlock = nil


local NUMROWS, COLWIDTH = 16, 210
local ROWHEIGHT = 305/NUMROWS


local offset = 0
local rows = {}
local frame


local function OnShow(self)
	TourGuide:UpdateGuidesPanel()

	self:SetAlpha(0)
	self:SetScript("OnUpdate", ww.FadeIn)
end


local function OnClick(self)
	local text = self.text:GetText()
	if not text then self:SetChecked(false)
	else
		TourGuide:LoadGuide(text)
		TourGuide:UpdateGuidesPanel()
		TourGuide:UpdateStatusFrame()
	end
end


function TourGuide:CreateGuidesPanel()
	frame = CreateFrame("Frame", nil, UIParent)

	rows = {}
	for i=1,NUMROWS*3 do
		local anchor, point = rows[i-1], "BOTTOMLEFT"
		if i == 1 then anchor, point = frame, "TOPLEFT"
		elseif i == (NUMROWS + 1) then anchor, point = rows[1], "TOPRIGHT"
		elseif i == (NUMROWS*2 + 1) then anchor, point = rows[NUMROWS + 1], "TOPRIGHT" end

		local row = CreateFrame("CheckButton", nil, frame)
		row:SetPoint("TOPLEFT", anchor, point)
		row:SetHeight(ROWHEIGHT)
		row:SetWidth(COLWIDTH)

		local highlight = ww.SummonTexture(row, nil, nil, nil, "Interface\\HelpFrame\\HelpFrameButton-Highlight")
		highlight:SetTexCoord(0, 1, 0, 0.578125)
		highlight:SetAllPoints()
		row:SetHighlightTexture(highlight)
		row:SetCheckedTexture(highlight)

		local text = ww.SummonFontString(row, nil, "GameFontNormal", nil, "LEFT", 6, 0)

		row:SetScript("OnClick", OnClick)

		row.text = text
		rows[i] = row
	end

	frame:EnableMouseWheel()
	frame:SetScript("OnMouseWheel", function(f, val)
		offset = offset - val*NUMROWS
		if (offset + NUMROWS*2) > #self.guidelist then offset = offset - NUMROWS end
		if offset < 0 then offset = 0 end
		self:UpdateGuidesPanel()
	end)

	frame:SetScript("OnShow", OnShow)
	ww.SetFadeTime(frame, 0.5)
	OnShow(frame)
	return frame
end


function TourGuide:UpdateGuidesPanel()
	if not frame or not frame:IsVisible() then return end
	for i,row in ipairs(rows) do
		row.i = i + offset

		local name = self.guidelist[i + offset]

		row.text:SetText(name)
		row:SetChecked(self.db.char.currentguide == name)
	end
end

