
local _, class = UnitClass("player")
if class ~= "DRUID" then return end


local oldForm = GetShapeshiftForm(true)

local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_AURAS_CHANGED")
f:SetScript("OnEvent", function()
	local form = GetShapeshiftForm(true)
	if form ~= oldForm and (-1 < form) and (7 > form) then PlaySoundFile("Interface\\AddOns\\Transforuid\\transform.mp3") end
	oldForm = form
end)