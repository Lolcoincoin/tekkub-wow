
local _, class = UnitClass("player")
if class == "HUNTER" then
	if not Tekkub then Tekkub = {} end
	Tekkub.stingorder = {"Viper Sting", "Serpent Sting", "Scorpid Sting"}
	Tekkub.vipertargets = {
		Moam = true,
		["Obsidian Destroyer"] = true,
	}
	Tekkub.stingtests = {
		["Viper Sting"] = function () local t = "target" return UnitExists(t) and not UnitIsCorpse(t) and UnitCanAttack("player", t) and ((not UnitIsCivilian("target") and UnitPowerType(t) == 0 and (UnitMana(t) < 30)) or Tekkub.vipertargets[UnitName("target")]) and not SpecialEventsAura:UnitHasDebuff("target", "Viper Sting") end,
		["Scorpid Sting"] = function() return true end,
		["Serpent Sting"] = function() return true end,
	}


	function Tekkub:HunterMark()
		if not self.SEregistered then self.SEregistered = SpecialEvents:RegisterModule("SpecialEventsAura", "TekkubHunter") end
		if not SpecialEventsAura:UnitHasBuff("player", "Trueshot Aura") then
			CastSpellByName("Trueshot Aura")
		elseif not SpecialEventsAura:UnitHasBuff("player", "Aspect of the Hawk") then
			CastSpellByName("Aspect of the Hawk")
		else
			if (UnitExists("target") and UnitCanAttack("player", "target") and (not UnitIsCivilian("target")) and (not SpecialEventsAura:UnitHasDebuff("target", "Hunter's Mark"))) then
				CastSpellByName("Hunter's Mark")
			end
		end
	end


	function Tekkub:HunterMongoose()
		if not self.SEregistered then self.SEregistered = SpecialEvents:RegisterModule("SpecialEventsAura", "TekkubHunter") end
		if IsUsableAction(3) then CastSpellByName("Mongoose Bite")
		elseif not SpecialEventsAura:UnitHasBuff("player" , "Aspect of the Monkey") then CastSpellByName("Aspect of the Monkey") end
	end


	function Tekkub:HunterSting()
		for _,val in ipairs(self.stingorder) do
			if not cast and self.stingtests[val]() and Immunization:Cast(val) then return end
		end

		UIErrorsFrame:AddMessage("Immune to stings!", 1.0, 0.1, 0.1, 1.0, UIERRORS_HOLD_TIME)
	end

end
