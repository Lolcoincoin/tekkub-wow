
CliqueDB = {
	["profileKeys"] = {
		["Mishutka of Icecrown"] = "Mishutka of Icecrown",
		["Beardyhead of Icecrown"] = "Beardyhead of Icecrown",
		["Tekkub of Icecrown"] = "Tekkub of Icecrown",
		["Tekkub of Uldaman"] = "Tekkub of Uldaman",
	},
	["disabledModules"] = {
		["Default"] = {
			["aceperluf"] = true,
			["IceHUD"] = true,
			["sageuf"] = true,
			["duf"] = true,
			["eeMon"] = true,
			["perfectraid"] = true,
			["ouf"] = true,
			["healassist"] = true,
			["aofhclique"] = true,
			["needylist"] = true,
			["blizzraid"] = true,
			["oramtf"] = true,
			["mg2-64pre"] = true,
			["sraid"] = true,
			["ctra"] = true,
			["OzRaid"] = true,
			["xperl"] = true,
			["squeaky"] = true,
			["xraid"] = true,
			["auf"] = true,
			["marsraid"] = true,
			["squishy"] = true,
			["pcuf"] = true,
			["watchdog"] = true,
			["easyraid"] = true,
			["nuf"] = true,
		},
	},
	["class"] = {
		["Priest"] = {
		},
		["Hunter"] = {
		},
		["Shaman"] = {
		},
	},
	["profiles"] = {
		["Mishutka of Icecrown"] = {
			["clicksets"] = {
				["Helpful actions"] = {
				},
				["Harmful actions"] = {
				},
				["Default"] = {
				},
				["Out of Combat"] = {
				},
			},
			["blacklist"] = {
			},
		},
		["Beardyhead of Icecrown"] = {
			["clicksets"] = {
				["Helpful actions"] = {
				},
				["Out of Combat"] = {
					["2"] = {
						["button"] = 2,
						["type"] = "menu",
						["modifier"] = "",
					},
				},
				["Default"] = {
					["1"] = {
						["arg2"] = 3,
						["type"] = "spell",
						["modifier"] = "",
						["button"] = 1,
						["arg1"] = "Heal",
						["texture"] = "Interface\\Icons\\Spell_Holy_Heal02",
					},
					["Shift-1"] = {
						["type"] = "spell",
						["modifier"] = "Shift-",
						["button"] = 1,
						["delete"] = true,
						["arg1"] = "Power Word: Fortitude",
						["texture"] = "Interface\\Icons\\Spell_Holy_WordFortitude",
					},
					["3"] = {
						["type"] = "spell",
						["modifier"] = "",
						["button"] = 3,
						["delete"] = true,
						["arg1"] = "Renew",
						["texture"] = "Interface\\Icons\\Spell_Holy_Renew",
					},
					["2"] = {
						["type"] = "spell",
						["modifier"] = "",
						["button"] = 2,
						["delete"] = true,
						["arg1"] = "Flash Heal",
						["texture"] = "Interface\\Icons\\Spell_Holy_FlashHeal",
					},
					["Shift-4"] = {
						["type"] = "spell",
						["modifier"] = "Shift-",
						["button"] = 4,
						["arg1"] = "Cure Disease",
						["texture"] = "Interface\\Icons\\Spell_Holy_NullifyDisease",
					},
					["4"] = {
						["type"] = "spell",
						["modifier"] = "",
						["button"] = 4,
						["delete"] = true,
						["arg1"] = "Dispel Magic",
						["texture"] = "Interface\\Icons\\Spell_Holy_DispelMagic",
					},
					["Shift-2"] = {
						["type"] = "spell",
						["modifier"] = "Shift-",
						["button"] = 2,
						["arg1"] = "Fear Ward",
						["texture"] = "Interface\\Icons\\Spell_Holy_Excorcism",
					},
					["Shift-3"] = {
						["type"] = "spell",
						["modifier"] = "Shift-",
						["button"] = 3,
						["delete"] = true,
						["arg1"] = "Power Word: Shield",
						["texture"] = "Interface\\Icons\\Spell_Holy_PowerWordShield",
					},
				},
				["Harmful actions"] = {
				},
			},
			["blacklist"] = {
			},
		},
		["Tekkub of Icecrown"] = {
			["clicksets"] = {
				["Helpful actions"] = {
				},
				["Harmful actions"] = {
				},
				["Default"] = {
				},
				["Out of Combat"] = {
				},
			},
			["blacklist"] = {
			},
		},
		["Tekkub of Uldaman"] = {
		},
	},
	["char"] = {
		["Beardyhead of Icecrown"] = {
		},
		["Tekkub of Icecrown"] = {
		},
		["Mishutka of Icecrown"] = {
		},
	},
	["faction"] = {
		["Alliance"] = {
		},
	},
	["chars"] = {
		["Huslu of Icecrown"] = {
			["Click on Dead Unit"] = {
			},
			["Default Friendly"] = {
			},
			["Out-of-combat"] = {
			},
			["Default Hostile"] = {
			},
		},
		["Ailurus of Icecrown"] = {
			["Click on Dead Unit"] = {
			},
			["Default Friendly"] = {
			},
			["Out-of-combat"] = {
			},
			["Default Hostile"] = {
			},
		},
		["Furry of Eonar"] = {
			["Click on Dead Unit"] = {
			},
			["Default Friendly"] = {
			},
			["Out-of-combat"] = {
			},
			["Default Hostile"] = {
			},
		},
		["Tekkub of Icecrown"] = {
			["Default Friendly"] = {
				{
					["action"] = "Clique:UnitMenu()\n",
					["button"] = "RightButton",
					["name"] = "Menu",
					["modifiers"] = 0,
					["custom"] = true,
				}, -- [1]
			},
			["Out-of-combat"] = {
				{
					["custom"] = true,
					["action"] = "if FOM_Feed then FOM_Feed() end",
					["button"] = "Button5",
					["name"] = "Feed Pet",
					["modifiers"] = 0,
					["texture"] = "Interface\\Icons\\Ability_Hunter_BeastTraining",
				}, -- [1]
			},
			["Default Hostile"] = {
			},
		},
		["Bear of Uldaman"] = {
			["Click on Dead Unit"] = {
			},
			["Default Friendly"] = {
				{
					["custom"] = true,
					["button"] = "LeftButton",
					["name"] = "Healing Touch",
					["modifiers"] = 0,
					["action"] = "MSaver(\"Healing Touch\", Clique.unit)",
				}, -- [1]
				{
					["custom"] = true,
					["button"] = "MiddleButton",
					["name"] = "Regrowth",
					["modifiers"] = 0,
					["action"] = "MSaver(\"Regrowth\", Clique.unit)",
				}, -- [2]
				{
					["custom"] = true,
					["button"] = "Button4",
					["name"] = "Rejuv",
					["modifiers"] = 0,
					["action"] = "MSaver(\"Rejuvenation\", Clique.unit)",
				}, -- [3]
			},
			["Default Hostile"] = {
			},
		},
		["Bear of Illidan"] = {
			["Click on Dead Unit"] = {
			},
			["Default Friendly"] = {
			},
			["Out-of-combat"] = {
			},
			["Default Hostile"] = {
			},
		},
		["Girth of Icecrown"] = {
			["Click on Dead Unit"] = {
			},
			["Default Friendly"] = {
			},
			["Out-of-combat"] = {
			},
			["Default Hostile"] = {
			},
		},
		["Quinacridone of Illidan"] = {
			["Click on Dead Unit"] = {
			},
			["Default Friendly"] = {
			},
			["Out-of-combat"] = {
			},
			["Default Hostile"] = {
			},
		},
		["Kumanoinkei of Illidan"] = {
			["Default Friendly"] = {
			},
			["Out-of-combat"] = {
			},
			["Default Hostile"] = {
			},
		},
		["Beardyhead of Icecrown"] = {
			["Click on Dead Unit"] = {
				{
					["button"] = "LeftButton",
					["modifiers"] = 0,
					["name"] = "Resurrection",
					["texture"] = "Interface\\Icons\\Spell_Holy_Resurrection",
				}, -- [1]
			},
			["Default Friendly"] = {
				{
					["action"] = "",
					["button"] = "Binding not defined",
					["custom"] = true,
					["modifiers"] = 0,
					["name"] = "Custom",
				}, -- [1]
				{
					["button"] = "Button5",
					["modifiers"] = 0,
					["name"] = "Dispel Magic",
					["texture"] = "Interface\\Icons\\Spell_Holy_DispelMagic",
				}, -- [2]
				{
					["name"] = "Efficient",
					["action"] = "Clique:EfficientHeal()",
					["button"] = "LeftButton",
					["custom"] = true,
					["modifiers"] = 0,
					["texture"] = "Interface\\Icons\\Spell_ChargePositive",
				}, -- [3]
				{
					["button"] = "Button4",
					["modifiers"] = 0,
					["name"] = "Heal",
					["texture"] = "Interface\\Icons\\Spell_Holy_Heal",
				}, -- [4]
				{
					["button"] = "MiddleButton",
					["modifiers"] = 0,
					["name"] = "Power Word: Shield",
					["texture"] = "Interface\\Icons\\Spell_Holy_PowerWordShield",
				}, -- [5]
				{
					["button"] = "RightButton",
					["modifiers"] = 0,
					["name"] = "Renew",
					["texture"] = "Interface\\Icons\\Spell_Holy_Renew",
				}, -- [6]
			},
			["Out-of-combat"] = {
				{
					["name"] = "Menu",
					["button"] = "RightButton",
					["action"] = "Clique:UnitMenu()\n",
					["modifiers"] = 0,
					["custom"] = true,
				}, -- [1]
			},
			["Default Hostile"] = {
				{
					["custom"] = true,
					["button"] = "RightButton",
					["name"] = "Custom",
					["modifiers"] = 0,
					["action"] = "Clique:UnitMenu()\n",
				}, -- [1]
			},
		},
		["Microfiche of Icecrown"] = {
			["Default Friendly"] = {
			},
			["Out-of-combat"] = {
			},
			["Default Hostile"] = {
			},
		},
		["Wuffi of Icecrown"] = {
			["Click on Dead Unit"] = {
			},
			["Default Friendly"] = {
				{
					["name"] = "Lesser Heal",
					["button"] = "LeftButton",
					["texture"] = "Interface\\Icons\\Spell_Holy_LesserHeal02",
					["modifiers"] = 0,
					["rank"] = "3",
				}, -- [1]
				{
					["name"] = "Renew",
					["button"] = "Button4",
					["texture"] = "Interface\\Icons\\Spell_Holy_Renew",
					["modifiers"] = 0,
					["rank"] = "1",
				}, -- [2]
			},
			["Default Hostile"] = {
			},
		},
		["Cubbyhole of Icecrown"] = {
			["Default Friendly"] = {
			},
			["Out-of-combat"] = {
			},
			["Default Hostile"] = {
			},
		},
	},
	["global"] = {
	},
	["realm"] = {
		["Icecrown"] = {
		},
	},
}
