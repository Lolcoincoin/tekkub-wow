
local swidth = UIParent:GetWidth()


local frame = CreateFrame("Frame", "tekFucksUp", UIParent)
frame:SetHeight(2)
frame:SetPoint("BOTTOMLEFT", WorldFrame, "BOTTOMLEFT")


local tex = frame:CreateTexture(nil, "BORDER")
tex:SetTexture("Interface\\AddOns\\tekFucksUp\\textures\\texture")
tex:SetVertexColor(0, .4, .9)
tex:ClearAllPoints()
tex:SetAllPoints(frame)


local spark = frame:CreateTexture(nil, "OVERLAY")
spark:SetTexture("Interface\\AddOns\\tekFucksUp\\textures\\glow")
spark:SetVertexColor(0, .4, .9)
spark:SetWidth(128)
spark:SetHeight(16)
spark:SetBlendMode("ADD")
spark:SetPoint("RIGHT", frame, "RIGHT", 11, 0)


local spark2 = frame:CreateTexture(nil, "OVERLAY")
spark2:SetTexture("Interface\\AddOns\\tekFucksUp\\textures\\glow2")
spark2:SetWidth(128)
spark2:SetHeight(16)
spark2:SetBlendMode("ADD")
spark2:SetPoint("RIGHT", frame, "RIGHT", 11, 0)


local rested = frame:CreateTexture(nil, "BORDER")
rested:SetTexture("Interface\\AddOns\\tekFucksUp\\textures\\texture")
rested:SetVertexColor(1, .2, 1)
rested:SetPoint("TOP", frame, "TOP")
rested:SetPoint("BOTTOM", frame, "BOTTOM")
rested:SetPoint("LEFT", frame, "RIGHT")


local notex = frame:CreateTexture(nil, "BORDER")
notex:SetTexture("Interface\\AddOns\\tekFucksUp\\textures\\texture")
notex:SetVertexColor(.5, .5, .5)
notex:SetPoint("TOPRIGHT", frame, "TOPLEFT", swidth, 0)
notex:SetPoint("BOTTOMLEFT", rested, "BOTTOMRIGHT")


frame:RegisterEvent("PLAYER_LOGIN")
frame:RegisterEvent("PLAYER_XP_UPDATE")
frame:SetScript("OnEvent", function(self)
	if UnitLevel("player") == MAX_PLAYER_LEVEL then return self:SetWidth(0) end

	local currentXP, maxXP, restXP, width = UnitXP("player"), UnitXPMax("player"), GetXPExhaustion() or 0, UIParent:GetWidth()
	self:SetWidth(currentXP/maxXP * width)
	rested:SetWidth( math.min(restXP, maxXP-currentXP)/maxXP * width + 0.001)
end)


