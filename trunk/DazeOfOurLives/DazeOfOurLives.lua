
----------------------------
--      Localization      --
----------------------------

local L = {
	Dazed = "Dazed",
	["Aspect of the Cheetah"] = "Aspect of the Cheetah",
	["Aspect of the Pack"] = "Aspect of the Pack"
}


------------------------------
--      Are you local?      --
------------------------------

local seaura = AceLibrary("SpecialEvents-Aura-2.0")
local _, myclass = UnitClass("player")


---------------------------
--      Ace Methods      --
---------------------------

function MountMeEzDismount:OnEnable()
	self:RegisterEvent("SpecialEvents_PlayerDebuffGained")
end


------------------------------
--			Event handling			--
------------------------------

function MountMeEzDismount:SpecialEvents_PlayerDebuffGained(debuff)
	if debuff == L.Dazed then
		for _,f in pairs(aspects) do
			local i = seaura:UnitHasBuff("player", f)
			if i then
				i = GetPlayerBuff(i, "HELPFUL")
 				self:Debug("Cancelling ".. f.. " in buff#".. i)
				return CancelPlayerBuff(i)
			end
		end
	end
end



