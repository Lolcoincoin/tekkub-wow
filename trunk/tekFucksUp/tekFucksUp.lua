local name = "oXP"
local addon = DongleStub('Dongle-1.0'):New(name)

function addon:Enable()
	self:createXPBar()
	self:updateXP()

	self:RegisterEvent("PLAYER_XP_UPDATE", "updateXP")
end


function addon:createXPBar()
	local frame = CreateFrame("Frame", "oXP", UIParent)
	frame:SetHeight(2)

	local tex = frame:CreateTexture(nil, "BORDER")
	tex:SetTexture("Interface\\AddOns\\oXP\\textures\\texture")
	tex:SetVertexColor(0, .4, .9)
	tex:ClearAllPoints()
	tex:SetAllPoints(frame)

	local rested = CreateFrame("Frame", nil, frame)
	rested:SetFrameLevel(1)
	rested:SetHeight(2)

	local rtex = rested:CreateTexture(nil, "BORDER")
	rtex:SetTexture("Interface\\AddOns\\oXP\\textures\\texture")
	rtex:SetVertexColor(1, .2, 1)
	rtex:SetAllPoints(rested)

	local noxp = CreateFrame("Frame", nil, frame)
	noxp:SetFrameLevel(1)
	noxp:SetHeight(2)

	local ntex = noxp:CreateTexture(nil, "BORDER")
	ntex:SetTexture("Interface\\AddOns\\oXP\\textures\\texture")
	ntex:SetVertexColor(.25, .25, .35)
	ntex:SetAllPoints(noxp)

	local spark = frame:CreateTexture(nil, "OVERLAY")
	spark:SetTexture("Interface\\AddOns\\oXP\\textures\\glow")
	spark:SetVertexColor(0, .4, .9)
	spark:SetWidth(128)
	spark:SetHeight(16)
	spark:SetBlendMode("ADD")
	spark:SetParent(frame)

	local spark2 = frame:CreateTexture(nil, "OVERLAY")
	spark2:SetTexture("Interface\\AddOns\\oXP\\textures\\glow2")
	spark2:SetWidth(128)
	spark2:SetHeight(16)
	spark2:SetBlendMode("ADD")
	spark2:SetParent(frame)

	self.XP = frame
	self.XP.spark = spark
	self.XP.spark2 = spark2
	self.XP.rested = rested
	self.XP.none = noxp

	frame:SetPoint("TOPLEFT", oDesktopBottom, 8, -2)
	rested:SetPoint("LEFT", frame, "RIGHT")
	noxp:SetPoint("LEFT", rested, "RIGHT")
	spark:SetPoint("RIGHT", frame, "RIGHT", 11, 0)
	spark2:SetPoint("RIGHT", frame, "RIGHT", 11, 0)
end


function addon:updateXP()
		local xp = self.XP
		local none = xp.none
		local rested = xp.rested

		local total = GetScreenWidth()
		if UnitLevel("player") == MAX_PLAYER_LEVEL then
			none:SetWidth(total)
			return
		end
		local currentXP = UnitXP("player")
		local maxXP = UnitXPMax("player")
		local restXP = GetXPExhaustion() or 0
		local remainXP = maxXP - (currentXP + restXP)

		if remainXP < 0 then
			remainXP = 0
		end

		xp:SetWidth((currentXP/maxXP)*total)
		if (restXP + currentXP)/maxXP > 1 then
			rested:SetWidth(total - xp:GetWidth())
		else
			rested:SetWidth((restXP/maxXP)*total + 0.001)
		end
		none:SetWidth((remainXP/maxXP)*total)

end

_G[name] = addon
