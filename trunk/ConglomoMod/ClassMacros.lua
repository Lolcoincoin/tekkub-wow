
if not ConglomoMod then ConglomoMod = {} end

function ConglomoMod:LoadClassMacros()
	local charmacs = {
		TekkubIcecrown = {
			Follow = {"Ability_Tracking", "/t Rohona !follow"},
		},
	}

	local macs = {
		Priest = {
			Heal = {"Spell_Holy_GreaterHeal", "/script -- CastSpellByName(\"Lesser Heal\")\n/script MSaver(\"All Heal\")"},
			Flash = {"Spell_Holy_FlashHeal", "/script -- CastSpellByName(\"Flash Heal\")\n/script MSaver(\"Flash Heal\")"},
			HoT = {"Spell_Holy_Renew", "/script -- CastSpellByName(\"Renew\")\n/script MSaver(\"Renew\")"},
			Shield = {"Spell_Holy_PowerWordShield", "/script CastSpellByName(\"Power Word: Shield\") if(SpellIsTargeting())then SpellTargetUnit(\"player\") end"},
			Smite = {"Spell_Holy_HolySmite", "/script -- CastSpellByName(\"Smite\")\n/script Immunization:Cast(\"Smite\")"},
			Pain = {"Spell_Shadow_ShadowWordPain", "/script  CastSpellByName(\"Shadow Word: Pain\")"},
			Cork = {"Spell_Holy_WordFortitude", "/script -- CastSpellByName(\"Power Word: Fortitude\")\n/script FuBar_CorkFu:CorkFirst()"},
		},
		Druid = {
			Heal = {"Spell_Nature_HealingTouch", "/script -- CastSpellByName(\"Healing Touch\")\n/script MSaver(\"Healing Touch\")"},
			Regrow = {"Spell_Nature_ResistNature", "/script -- CastSpellByName(\"Regrowth\")\n/script MSaver(\"Regrowth\")"},
			Wrath = {"Spell_Nature_AbolishMagic", "/script --CastSpellByName(\"Wrath\")\n/script Immunization:Cast(\"Wrath\")"},
			HoT = {"Spell_Nature_Rejuvenation", "/script -- CastSpellByName(\"Rejuvenation\")\n/script MSaver(\"Rejuvenation\")"},
			Claw = {"Ability_Druid_Rake", "/script --CastSpellByName(\"Claw\")\n/script FeralFighter_CatAttack()"},
			Back = {"Ability_Druid_Disembowel", "/script -- CastSpellByName(\"Shred\")\n/script FeralFighter_CatAttack(true)"},
			Moonfire = {"Spell_Nature_StarFall", "/script -- CastSpellByName(\"Moonfire\")\n/script ConglomoMod:Moonfire()"},
			Cork = {"Spell_Nature_Regeneration", "/script -- CastSpellByName(\"Thorns\")\n/script FuBar_CorkFu:CorkFirst()"},
		},
		Hunter = {
			Pet = {"Ability_Hunter_BeastCall", "/script FuzzyLogic:CallPet()"},
			Mongoose = {"Ability_Hunter_SwiftStrike", "/script --CastSpellByName(\"Mongoose Bite\")\n/script Tekkub:HunterMongoose()"},
			Sting = {"Ability_Hunter_AimedShot", "/script -- CastSpellByName(\"Scorpid Sting\")\n/script Tekkub:HunterSting()"},
			Mark = {"Ability_Hunter_SniperShot", "/script -- CastSpellByName(\"Hunter\'s Mark\");\n/script Tekkub:HunterMark()"},
			["Pet Att"] = {"Spell_Frost_IceClaw", "/script PetAttack()"},
--			{"Raptor", 87, "/script -- CastSpellByName(\"Raptor Strike\");\n/script Tekkub:MonkRaptorClip()"},
		},
--		Paladin = {
--			{"Heal", 260, "/script -- CastSpellByName(\"Holy Light\")\n/script MSaver(\"Holy Light\")"},
--			{"Flash", 254, "/script -- CastSpellByName(\"Flash of Light\")\n/script MSaver(\"Flash of Light\")"},
--			{"Right", 143, "/script -- CastSpellByName(\"Judgement\")\n/script Tekkub:Seal(\"Seal of Righteousness\")"},
--			{"Fury", 285, "/script -- CastSpellByName(\"Judgement\")\n/script Tekkub:Seal(\"Seal of Fury\")"},
--			{"Crusade", 262, "/script -- CastSpellByName(\"Judgement\")\n/script Tekkub:Seal(\"Seal of the Crusader\")"},
--			{"Cork", 292, "/script -- CastSpellByName(\"Power Word: Fortitude\")\n/script FuBar_CorkFu:CorkFirst()"},
--		},
--		Shaman = {
--			{"Ench", 375, "/script Tekkub_RotateEnch()"},
--			{"Cork", 345, "/script -- CastSpellByName(\"Lightning Shield\")\n/script FuBar_CorkFu:CorkFirst()"},
--		},
	}

	for index=36,19,-1 do DeleteMacro(index) end
	if charmacs[UnitName("player")..GetRealmName()] then
		for n,v in charmacs[UnitName("player")..GetRealmName()] do CreateMacro(n, self:GetMacroIcon(v[1]) or 1, v[2], 1, true) end
	end
	for n,v in macs[UnitClass("player")] do CreateMacro(n, self:GetMacroIcon(v[1]) or 1, v[2], 1, true) end
end


function ConglomoMod:GetMacroIcon(icon)
	local r,i,t,x = icon,1,type(icon)

	if t == "nil" then return
	elseif (t == "function") then r = icon()
	elseif (t == "number") then return icon
	elseif (t == "string") then r = "Interface\\Icons\\"..icon end

	repeat
		x = GetMacroIconInfo(i)
		if (x == r) then return i end
		i = i+1
	until not x
end

