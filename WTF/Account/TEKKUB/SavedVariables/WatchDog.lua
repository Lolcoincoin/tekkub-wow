
WatchDog = {
	["HUNTER"] = {
		["friendly_click"] = {
			["MiddleButton"] = "/cast Heal Pet",
		},
		["enemy_click"] = {
		},
	},
	["debuffs"] = true,
	["fixedwidth"] = 175,
	["PALADIN"] = {
		["friendly_click"] = {
			["MiddleButton"] = "/script CastSpellByName(\"Blessing of Protection\"); SpellTargetUnit(wd_unit);",
			["MiddleButtonShift"] = "/script CastSpellByName(\"Blessing of Freedom\"); SpellTargetUnit(wd_unit);",
			["RightButton"] = "/script MSaver(\"Flash of Light\", wd_unit)",
			["LeftButton"] = "/script MSaver(\"Holy Light\", wd_unit)",
		},
		["enemy_click"] = {
		},
	},
	["MAGE"] = {
		["friendly_click"] = {
		},
		["enemy_click"] = {
		},
	},
	["filterdebuffs"] = false,
	["tooltips"] = true,
	["defaultparty"] = false,
	["targethp"] = false,
	["locked"] = true,
	["filterbuffs"] = false,
	["colorback"] = {
		["a"] = 1,
		["r"] = 0,
		["g"] = 0,
		["b"] = 0,
	},
	["hpreverse"] = false,
	["hpheight"] = 13,
	["defaultplayer"] = false,
	["mpreverse"] = false,
	["pet"] = {
		["visible"] = true,
		["format1"] = "[happycolor][name] [leader] [right]-[missinghp]/[maxhp]  [percenthp]%",
		["format2"] = "[left][level] - [creature] [right]-[missingmp]/[maxmp]  [percentmp]%",
	},
	["GLOBAL"] = {
		["friendly_click"] = {
			["Button5"] = "WD_Menu",
			["LeftButtonShift"] = "TargetUnit",
		},
		["enemy_click"] = {
		},
	},
	["player"] = {
		["visible"] = true,
		["format1"] = "[statuscolor][name] [leader] [right]-[missinghp]/[maxhp]  [percenthp]%",
		["format2"] = "[left][level] - [raidcolor][class][white] [right]-[missingmp]/[maxmp]  [percentmp]%",
	},
	["toftprecision"] = 0.25,
	["buffs"] = true,
	["debuffsanchor"] = "RIGHT",
	["defaulttarget"] = false,
	["visible"] = true,
	["hpsmooth"] = true,
	["SHAMAN"] = {
		["friendly_click"] = {
		},
		["enemy_click"] = {
		},
	},
	["scale"] = 1,
	["toft"] = false,
	["showmpbar"] = true,
	["party"] = {
		["visible"] = true,
		["format1"] = "[statuscolor][name] [leader] [right]-[missinghp]/[maxhp]  [percenthp]%",
		["format2"] = "[left][level] - [raidcolor][class][white] [right]-[missingmp]/[maxmp]  [percentmp]%",
	},
	["blizzraid"] = true,
	["partypets"] = true,
	["dynamicwidth"] = false,
	["ROGUE"] = {
		["friendly_click"] = {
		},
		["enemy_click"] = {
		},
	},
	["DRUID"] = {
		["friendly_click"] = {
			["LeftButton"] = "/script MSaver(\"Healing Touch\", wd_unit)",
		},
		["enemy_click"] = {
		},
	},
	["bestrank"] = false,
	["target"] = {
		["visible"] = true,
		["format1"] = "[aggro][name] [right][combos2] [percenthp]%",
		["format2"] = "[difficulty][level][white] - [classification][smartclass]     [right][curmp]/[maxmp]",
	},
	["ctraidassist"] = true,
	["targetless"] = true,
	["newbars"] = false,
	["PRIEST"] = {
		["friendly_click"] = {
			["MiddleButton"] = "/script CastSpellByName(\"Power Word: Shield\"); SpellTargetUnit(wd_unit);",
			["Button4"] = "Power Word: Fortitude(Rank 2)",
		},
		["enemy_click"] = {
		},
	},
	["defaultbuffs"] = true,
	["defaultbirds"] = false,
	["buffsanchor"] = "RIGHT",
	["showborder"] = false,
	["WARRIOR"] = {
		["friendly_click"] = {
		},
		["enemy_click"] = {
		},
	},
	["precision"] = 45,
	["showhpbar"] = true,
	["WARLOCK"] = {
		["friendly_click"] = {
		},
		["enemy_click"] = {
		},
	},
}
