
MikSBT_SavedVars = {
	["Profiles"] = {
		["Default"] = {
			["ScrollAreaSettings"] = {
				{
					["Name"] = "Incoming",
					["OffsetX"] = -60,
					["AnimationStyle"] = "LeftParabola",
					["OffsetY"] = -160,
					["TextAlignIndex"] = 3,
					["Reversed"] = true,
				}, -- [1]
				{
					["AnimationStyle"] = "RightParabola",
					["OffsetY"] = -160,
					["Name"] = "Outgoing",
					["OffsetX"] = 60,
				}, -- [2]
				{
					["ScrollHeight"] = 150,
					["OffsetY"] = 100,
					["Name"] = "Notification",
					["TextAlignIndex"] = 2,
				}, -- [3]
			},
			["EventSettings"] = {
				["PET_PARRY"] = {
					["Message"] = "Pet Parry",
					["Color"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["ScrollAreaIndex"] = 2,
				},
				["OUTGOING_SPELL_BLOCK"] = {
					["Message"] = "Block! (%s)",
					["ScrollAreaIndex"] = 2,
				},
				["NOTIFICATION_BUFF_FADE"] = {
					["Message"] = "-[%s]",
					["Color"] = {
						["r"] = 0.918,
						["g"] = 0.918,
						["b"] = 0,
					},
				},
				["INCOMING_SPELL_PARRY"] = {
					["Message"] = "(%s) Parry!",
					["Color"] = {
						["r"] = 0,
						["g"] = 0,
						["b"] = 1,
					},
					["ScrollAreaIndex"] = 1,
				},
				["INCOMING_HOT"] = {
					["Message"] = "(%s - %n) +%a",
					["Color"] = {
						["r"] = 0,
						["g"] = 1,
						["b"] = 0,
					},
					["ScrollAreaIndex"] = 1,
				},
				["OUTGOING_MISS"] = {
					["Message"] = "Miss!",
					["ScrollAreaIndex"] = 2,
				},
				["NOTIFICATION_SOUL_SHARD_CREATED"] = {
					["Message"] = "+%s",
					["Color"] = {
						["r"] = 0.628,
						["g"] = 0,
						["b"] = 0.628,
					},
					["AlwaysSticky"] = true,
					["NormalFontSize"] = 26,
				},
				["OUTGOING_SPELL_IMMUNE"] = {
					["Message"] = "Immune! (%s)",
					["Color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["ScrollAreaIndex"] = 2,
				},
				["INCOMING_HEAL"] = {
					["Message"] = "(%s - %n) +%a",
					["CanCrit"] = true,
					["Color"] = {
						["r"] = 0,
						["g"] = 1,
						["b"] = 0,
					},
					["ScrollAreaIndex"] = 1,
				},
				["PET_SPELL_ABSORB"] = {
					["Message"] = "Pet Absorb! (%s)",
					["Color"] = {
						["r"] = 0.5,
						["g"] = 0.5,
						["b"] = 1,
					},
					["ScrollAreaIndex"] = 2,
				},
				["OUTGOING_HEAL"] = {
					["CritFontSize"] = 22,
					["CanCrit"] = true,
					["Color"] = {
						["r"] = 0,
						["g"] = 1,
						["b"] = 0,
					},
					["Message"] = "+%a (%s - %n)",
					["ScrollAreaIndex"] = 2,
				},
				["PET_SPELL_DAMAGE"] = {
					["Message"] = "Pet %a (%s)",
					["CanCrit"] = true,
					["Color"] = {
						["r"] = 0.33,
						["g"] = 0.33,
						["b"] = 1,
					},
					["ScrollAreaIndex"] = 2,
				},
				["INCOMING_SPELL_MISS"] = {
					["Message"] = "(%s) Miss!",
					["Color"] = {
						["r"] = 0,
						["g"] = 0,
						["b"] = 1,
					},
					["ScrollAreaIndex"] = 1,
				},
				["PET_SPELL_PARRY"] = {
					["Message"] = "Pet Parry! (%s)",
					["Color"] = {
						["r"] = 0.33,
						["g"] = 0.33,
						["b"] = 1,
					},
					["ScrollAreaIndex"] = 2,
				},
				["NOTIFICATION_HONOR_GAIN"] = {
					["Message"] = "+%a Honor",
					["Color"] = {
						["r"] = 0.5,
						["g"] = 0.5,
						["b"] = 0.698,
					},
				},
				["NOTIFICATION_ITEM_BUFF_FADE"] = {
					["Message"] = "-[%s]",
					["Color"] = {
						["r"] = 0.831,
						["g"] = 0.831,
						["b"] = 0.831,
					},
				},
				["INCOMING_IMMUNE"] = {
					["Message"] = "Immune!",
					["Color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["ScrollAreaIndex"] = 1,
				},
				["OUTGOING_DODGE"] = {
					["Message"] = "Dodge!",
					["ScrollAreaIndex"] = 2,
				},
				["NOTIFICATION_POWER_LOSS"] = {
					["Message"] = "-%a %s",
					["Color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
				},
				["OUTGOING_SPELL_PARRY"] = {
					["Message"] = "Parry! (%s)",
					["ScrollAreaIndex"] = 2,
				},
				["OUTGOING_SPELL_EVADE"] = {
					["Message"] = "Evade! (%s)",
					["NormalFontSize"] = 22,
					["Color"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["ScrollAreaIndex"] = 2,
				},
				["INCOMING_ABSORB"] = {
					["Message"] = "Absorb!",
					["Color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["ScrollAreaIndex"] = 1,
				},
				["PET_SPELL_IMMUNE"] = {
					["Message"] = "Pet Immune! (%s)",
					["Color"] = {
						["r"] = 0.5,
						["g"] = 0.5,
						["b"] = 1,
					},
					["ScrollAreaIndex"] = 2,
				},
				["OUTGOING_PARRY"] = {
					["Message"] = "Parry!",
					["ScrollAreaIndex"] = 2,
				},
				["INCOMING_DODGE"] = {
					["Message"] = "Dodge!",
					["Color"] = {
						["r"] = 0,
						["g"] = 0,
						["b"] = 1,
					},
					["ScrollAreaIndex"] = 1,
				},
				["NOTIFICATION_CP_GAIN"] = {
					["Message"] = "%a CP",
					["Color"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
				},
				["NOTIFICATION_REP_GAIN"] = {
					["Message"] = "+%a Reputation (%s)",
					["Color"] = {
						["r"] = 0.5,
						["g"] = 0.5,
						["b"] = 0.698,
					},
				},
				["PET_SPELL_MISS"] = {
					["Message"] = "Pet Miss! (%s)",
					["Color"] = {
						["r"] = 0.33,
						["g"] = 0.33,
						["b"] = 1,
					},
					["ScrollAreaIndex"] = 2,
				},
				["NOTIFICATION_DEBUFF_FADE"] = {
					["Message"] = "-[%s]",
					["Color"] = {
						["r"] = 0,
						["g"] = 0.835,
						["b"] = 0.835,
					},
				},
				["INCOMING_SPELL_DAMAGE"] = {
					["Message"] = "(%s) -%a",
					["CanCrit"] = true,
					["Color"] = {
						["r"] = 1,
						["g"] = 0,
						["b"] = 0,
					},
					["ScrollAreaIndex"] = 1,
				},
				["NOTIFICATION_SKILL_GAIN"] = {
					["Message"] = "%s: %a",
					["Color"] = {
						["r"] = 0.333,
						["g"] = 0.333,
						["b"] = 1,
					},
				},
				["PET_MISS"] = {
					["Message"] = "Pet Miss",
					["Color"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["ScrollAreaIndex"] = 2,
				},
				["OUTGOING_EVADE"] = {
					["Message"] = "Evade!",
					["NormalFontSize"] = 22,
					["Color"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["ScrollAreaIndex"] = 2,
				},
				["INCOMING_BLOCK"] = {
					["Message"] = "Block!",
					["Color"] = {
						["r"] = 0,
						["g"] = 0,
						["b"] = 1,
					},
					["ScrollAreaIndex"] = 1,
				},
				["OUTGOING_SPELL_DODGE"] = {
					["Message"] = "Dodge! (%s)",
					["ScrollAreaIndex"] = 2,
				},
				["OUTGOING_SPELL_ABSORB"] = {
					["Message"] = "Absorb! (%s)",
					["Color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["ScrollAreaIndex"] = 2,
				},
				["PET_SPELL_EVADE"] = {
					["Message"] = "Pet Evade! (%s)",
					["Color"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 1,
					},
					["ScrollAreaIndex"] = 2,
				},
				["OUTGOING_SPELL_DAMAGE"] = {
					["Message"] = "%a (%s)",
					["CanCrit"] = true,
					["Color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["ScrollAreaIndex"] = 2,
				},
				["OUTGOING_DAMAGE"] = {
					["Message"] = "%a",
					["CanCrit"] = true,
					["ScrollAreaIndex"] = 2,
				},
				["PET_IMMUNE"] = {
					["Message"] = "Pet Immune",
					["Color"] = {
						["r"] = 0.5,
						["g"] = 0.5,
						["b"] = 1,
					},
					["ScrollAreaIndex"] = 2,
				},
				["INCOMING_SPELL_DODGE"] = {
					["Message"] = "(%s) Dodge!",
					["Color"] = {
						["r"] = 0,
						["g"] = 0,
						["b"] = 1,
					},
					["ScrollAreaIndex"] = 1,
				},
				["NOTIFICATION_CP_FULL"] = {
					["Message"] = "%a CP Finish It!",
					["Color"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
				},
				["INCOMING_DAMAGE"] = {
					["Message"] = "(%n) -%a",
					["CanCrit"] = true,
					["Color"] = {
						["r"] = 1,
						["g"] = 0,
						["b"] = 0,
					},
					["ScrollAreaIndex"] = 1,
				},
				["INCOMING_PARRY"] = {
					["Message"] = "Parry!",
					["Color"] = {
						["r"] = 0,
						["g"] = 0,
						["b"] = 1,
					},
					["ScrollAreaIndex"] = 1,
				},
				["INCOMING_SPELL_ABSORB"] = {
					["Message"] = "(%s) Absorb!",
					["Color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["ScrollAreaIndex"] = 1,
				},
				["OUTGOING_ABSORB"] = {
					["Message"] = "Absorb!",
					["Color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["ScrollAreaIndex"] = 2,
				},
				["INCOMING_SPELL_BLOCK"] = {
					["Message"] = "(%s) Block!",
					["Color"] = {
						["r"] = 0,
						["g"] = 0,
						["b"] = 1,
					},
					["ScrollAreaIndex"] = 1,
				},
				["NOTIFICATION_COMBAT_ENTER"] = {
					["Message"] = "+Combat",
				},
				["PET_SPELL_DODGE"] = {
					["Message"] = "Pet Dodge! (%s)",
					["Color"] = {
						["r"] = 0.33,
						["g"] = 0.33,
						["b"] = 1,
					},
					["ScrollAreaIndex"] = 2,
				},
				["PET_DAMAGE"] = {
					["Message"] = "Pet %a",
					["CanCrit"] = true,
					["Color"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["ScrollAreaIndex"] = 2,
				},
				["NOTIFICATION_NPC_KILLING_BLOW"] = {
					["Message"] = "Killing Blow! (%s)",
					["Disabled"] = true,
					["Color"] = {
						["r"] = 0.333,
						["g"] = 0.333,
						["b"] = 1,
					},
					["AlwaysSticky"] = true,
					["NormalFontSize"] = 26,
				},
				["NOTIFICATION_EXPERIENCE_GAIN"] = {
					["Message"] = "%a XP",
					["Disabled"] = true,
					["Color"] = {
						["r"] = 0.756,
						["g"] = 0.27,
						["b"] = 0.823,
					},
					["AlwaysSticky"] = true,
					["NormalFontSize"] = 26,
				},
				["NOTIFICATION_REP_LOSS"] = {
					["Message"] = "-%a Reputation (%s)",
					["Color"] = {
						["r"] = 0.5,
						["g"] = 0.5,
						["b"] = 0.698,
					},
				},
				["NOTIFICATION_BUFF"] = {
					["Message"] = "[%s]",
					["Color"] = {
						["r"] = 0.698,
						["g"] = 0.698,
						["b"] = 0,
					},
				},
				["INCOMING_SPELL_DOT"] = {
					["Message"] = "(%s) -%a",
					["Color"] = {
						["r"] = 1,
						["g"] = 0,
						["b"] = 0,
					},
					["ScrollAreaIndex"] = 1,
				},
				["OUTGOING_SPELL_MISS"] = {
					["Message"] = "Miss! (%s)",
					["ScrollAreaIndex"] = 2,
				},
				["OUTGOING_SPELL_RESIST"] = {
					["Message"] = "Resist! (%s)",
					["Color"] = {
						["r"] = 0.5,
						["g"] = 0.5,
						["b"] = 0.698,
					},
					["ScrollAreaIndex"] = 2,
				},
				["INCOMING_ENVIRONMENTAL"] = {
					["Message"] = "-%a %s",
					["Color"] = {
						["r"] = 1,
						["g"] = 0,
						["b"] = 0,
					},
					["ScrollAreaIndex"] = 1,
				},
				["PET_SPELL_RESIST"] = {
					["Message"] = "Pet Resist! (%s)",
					["Color"] = {
						["r"] = 0.5,
						["g"] = 0.5,
						["b"] = 0.698,
					},
					["ScrollAreaIndex"] = 2,
				},
				["PET_DODGE"] = {
					["Message"] = "Pet Dodge",
					["Color"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["ScrollAreaIndex"] = 2,
				},
				["PET_ABSORB"] = {
					["Message"] = "Pet Absorb",
					["Color"] = {
						["r"] = 0.5,
						["g"] = 0.5,
						["b"] = 1,
					},
					["ScrollAreaIndex"] = 2,
				},
				["INCOMING_SPELL_IMMUNE"] = {
					["Message"] = "(%s) Immune!",
					["Color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["ScrollAreaIndex"] = 1,
				},
				["PET_EVADE"] = {
					["Message"] = "Pet Evade",
					["NormalFontSize"] = 22,
					["Color"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 1,
					},
					["ScrollAreaIndex"] = 2,
				},
				["INCOMING_SPELL_REFLECT"] = {
					["Message"] = "(%s) Reflect!",
					["CanCrit"] = true,
					["Color"] = {
						["r"] = 0.5,
						["g"] = 0,
						["b"] = 0.5,
					},
					["ScrollAreaIndex"] = 1,
				},
				["OUTGOING_IMMUNE"] = {
					["Message"] = "Immune!",
					["Color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["ScrollAreaIndex"] = 2,
				},
				["OUTGOING_HOT"] = {
					["Message"] = "+%a (%s - %n)",
					["Color"] = {
						["r"] = 0,
						["g"] = 1,
						["b"] = 0,
					},
					["ScrollAreaIndex"] = 2,
				},
				["OUTGOING_BLOCK"] = {
					["Message"] = "Block!",
					["ScrollAreaIndex"] = 2,
				},
				["NOTIFICATION_POWER_GAIN"] = {
					["Message"] = "+%a %s",
					["Color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
				},
				["PET_SPELL_BLOCK"] = {
					["Message"] = "Pet Block! (%s)",
					["Color"] = {
						["r"] = 0.33,
						["g"] = 0.33,
						["b"] = 1,
					},
					["ScrollAreaIndex"] = 2,
				},
				["OUTGOING_SPELL_REFLECT"] = {
					["Message"] = "Reflect! (%s)",
					["CanCrit"] = true,
					["Color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["ScrollAreaIndex"] = 2,
				},
				["NOTIFICATION_DEBUFF"] = {
					["Message"] = "[%s]",
					["Color"] = {
						["r"] = 0,
						["g"] = 0.5,
						["b"] = 0.5,
					},
				},
				["NOTIFICATION_EXTRA_ATTACK"] = {
					["Message"] = "%s!",
					["Color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["AlwaysSticky"] = true,
					["NormalFontSize"] = 26,
				},
				["INCOMING_SPELL_RESIST"] = {
					["Message"] = "(%s) Resist!",
					["Color"] = {
						["r"] = 0.5,
						["g"] = 0,
						["b"] = 0.5,
					},
					["ScrollAreaIndex"] = 1,
				},
				["INCOMING_MISS"] = {
					["Message"] = "Miss!",
					["Color"] = {
						["r"] = 0,
						["g"] = 0,
						["b"] = 1,
					},
					["ScrollAreaIndex"] = 1,
				},
				["PET_BLOCK"] = {
					["Message"] = "Pet Block",
					["Color"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0,
					},
					["ScrollAreaIndex"] = 2,
				},
				["NOTIFICATION_PC_KILLING_BLOW"] = {
					["Message"] = "Killing Blow! (%s)",
					["Color"] = {
						["r"] = 0.333,
						["g"] = 0.333,
						["b"] = 1,
					},
					["AlwaysSticky"] = true,
					["NormalFontSize"] = 26,
				},
				["OUTGOING_SPELL_DOT"] = {
					["Message"] = "%a (%s)",
					["Color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["ScrollAreaIndex"] = 2,
				},
				["NOTIFICATION_COMBAT_LEAVE"] = {
					["Message"] = "-Combat",
				},
				["NOTIFICATION_ITEM_BUFF"] = {
					["Message"] = "[%s]",
					["Color"] = {
						["r"] = 0.698,
						["g"] = 0.698,
						["b"] = 0.698,
					},
				},
			},
			["AnimationSpeed"] = 100,
			["CreationVersion"] = 4.01,
			["PartialEffectSettings"] = {
				["Overheal"] = {
					["Color"] = {
						["r"] = 0,
						["g"] = 0.705,
						["b"] = 0.5,
					},
				},
				["Absorb"] = {
					["Color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
				},
				["Crushing"] = {
					["Color"] = {
						["r"] = 0.5,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["Glancing"] = {
					["Color"] = {
						["r"] = 1,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["Block"] = {
					["Color"] = {
						["r"] = 0.5,
						["g"] = 0,
						["b"] = 1,
					},
				},
				["Resist"] = {
					["Color"] = {
						["r"] = 0.5,
						["g"] = 0,
						["b"] = 0.5,
					},
				},
				["Vulnerability"] = {
					["Color"] = {
						["r"] = 0.5,
						["g"] = 0.5,
						["b"] = 1,
					},
				},
			},
			["GameDamageDisabled"] = true,
			["DamageColorSettings"] = {
				["Shadow"] = {
					["Color"] = {
						["r"] = 0.628,
						["g"] = 0,
						["b"] = 0.628,
					},
				},
				["Physical"] = {
					["Color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["Arcane"] = {
					["Color"] = {
						["r"] = 1,
						["g"] = 0.725,
						["b"] = 1,
					},
				},
				["Holy"] = {
					["Color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 0.627,
					},
				},
				["Fire"] = {
					["Color"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0.5,
					},
				},
				["Frost"] = {
					["Color"] = {
						["r"] = 0.5,
						["g"] = 0.5,
						["b"] = 1,
					},
				},
				["Nature"] = {
					["Color"] = {
						["r"] = 0.5,
						["g"] = 1,
						["b"] = 0.5,
					},
				},
			},
			["Suppressions"] = {
				["MSBT_SUPPRESSION_CLEARCAST"] = {
					["SearchPattern"] = "%[Clearcasting%]",
				},
				["MSBT_SUPPRESSION_SHADOW_TRANCE"] = {
					["SearchPattern"] = "%[Shadow Trance%]",
				},
			},
			["MasterFontSettings"] = {
				["CritFontSize"] = 26,
				["CritFontName"] = "Default",
				["NormalOutlineIndex"] = 3,
				["NormalFontName"] = "Default",
				["CritOutlineIndex"] = 3,
				["NormalFontSize"] = 18,
			},
			["AnimationStep"] = 2,
			["Triggers"] = {
				["MSBT_TRIGGER_RIPOSTE"] = {
					["EventSettings"] = {
						["Message"] = "Riposte!",
						["Color"] = {
							["r"] = 1,
							["g"] = 1,
							["b"] = 0,
						},
						["AlwaysSticky"] = true,
						["NormalFontSize"] = 26,
					},
					["TriggerSettings"] = {
						["Classes"] = {
							["ROGUE"] = true,
						},
						["TriggerEvents"] = {
							"CHAT_MSG_COMBAT_CREATURE_VS_SELF_MISSES", -- [1]
							"CHAT_MSG_COMBAT_HOSTILEPLAYER_MISSES", -- [2]
							"CHAT_MSG_COMBAT_PARTY_MISSES", -- [3]
							"CHAT_MSG_SPELL_CREATURE_VS_SELF_DAMAGE", -- [4]
							"CHAT_MSG_SPELL_HOSTILEPLAYER_DAMAGE", -- [5]
							"CHAT_MSG_SPELL_PARTY_DAMAGE", -- [6]
						},
						["TriggerType"] = 6,
						["SearchPatterns"] = {
							"VSPARRYOTHERSELF", -- [1]
							"SPELLPARRIEDOTHERSELF", -- [2]
						},
					},
				},
				["MSBT_TRIGGER_LOW_PET_HEALTH"] = {
					["EventSettings"] = {
						["Color"] = {
							["r"] = 1,
							["g"] = 0.5,
							["b"] = 0.5,
						},
						["Message"] = "Low Pet Health! (%1)",
						["NormalFontSize"] = 26,
					},
					["TriggerSettings"] = {
						["Classes"] = {
							["HUNTER"] = true,
							["WARLOCK"] = true,
							["MAGE"] = true,
						},
						["TriggerType"] = 3,
						["Threshold"] = 40,
					},
				},
				["MSBT_TRIGGER_LOW_HEALTH"] = {
					["EventSettings"] = {
						["Message"] = "Low Health! (%1)",
						["Color"] = {
							["r"] = 1,
							["g"] = 0.5,
							["b"] = 0.5,
						},
						["NormalFontSize"] = 26,
					},
					["TriggerSettings"] = {
						["Threshold"] = 40,
						["TriggerType"] = 1,
					},
				},
				["MSBT_TRIGGER_CLEARCAST"] = {
					["EventSettings"] = {
						["Message"] = "Clearcast!",
						["Color"] = {
							["r"] = 1,
							["g"] = 1,
							["b"] = 0,
						},
						["AlwaysSticky"] = true,
						["NormalFontSize"] = 26,
					},
					["TriggerSettings"] = {
						["Classes"] = {
							["MAGE"] = true,
							["SHAMAN"] = true,
						},
						["TriggerEvents"] = {
							"CHAT_MSG_SPELL_PERIODIC_SELF_BUFFS", -- [1]
						},
						["TriggerType"] = 6,
						["SearchPatterns"] = {
							"You gain Clearcasting", -- [1]
						},
					},
				},
				["MSBT_TRIGGER_NIGHTFALL"] = {
					["EventSettings"] = {
						["Message"] = "Nightfall!",
						["Color"] = {
							["r"] = 0.709,
							["g"] = 0,
							["b"] = 0.709,
						},
						["AlwaysSticky"] = true,
						["NormalFontSize"] = 26,
					},
					["TriggerSettings"] = {
						["Classes"] = {
							["WARLOCK"] = true,
						},
						["TriggerEvents"] = {
							"CHAT_MSG_SPELL_PERIODIC_SELF_BUFFS", -- [1]
						},
						["TriggerType"] = 6,
						["SearchPatterns"] = {
							"You gain Shadow Trance", -- [1]
						},
					},
				},
				["MSBT_TRIGGER_COUNTER_ATTACK"] = {
					["EventSettings"] = {
						["Message"] = "Counterattack!",
						["Color"] = {
							["r"] = 1,
							["g"] = 1,
							["b"] = 0,
						},
						["AlwaysSticky"] = true,
						["NormalFontSize"] = 26,
					},
					["TriggerSettings"] = {
						["Classes"] = {
							["HUNTER"] = true,
						},
						["TriggerEvents"] = {
							"CHAT_MSG_COMBAT_CREATURE_VS_SELF_MISSES", -- [1]
							"CHAT_MSG_COMBAT_HOSTILEPLAYER_MISSES", -- [2]
							"CHAT_MSG_COMBAT_PARTY_MISSES", -- [3]
							"CHAT_MSG_SPELL_CREATURE_VS_SELF_DAMAGE", -- [4]
							"CHAT_MSG_SPELL_HOSTILEPLAYER_DAMAGE", -- [5]
							"CHAT_MSG_SPELL_PARTY_DAMAGE", -- [6]
						},
						["TriggerType"] = 6,
						["SearchPatterns"] = {
							"VSPARRYOTHERSELF", -- [1]
							"SPELLPARRIEDOTHERSELF", -- [2]
						},
					},
				},
				["MSBT_TRIGGER_OVERPOWER"] = {
					["EventSettings"] = {
						["Message"] = "Overpower!",
						["Color"] = {
							["r"] = 1,
							["g"] = 1,
							["b"] = 0,
						},
						["AlwaysSticky"] = true,
						["NormalFontSize"] = 26,
					},
					["TriggerSettings"] = {
						["Classes"] = {
							["WARRIOR"] = true,
						},
						["TriggerEvents"] = {
							"CHAT_MSG_COMBAT_SELF_MISSES", -- [1]
							"CHAT_MSG_SPELL_SELF_DAMAGE", -- [2]
						},
						["TriggerType"] = 6,
						["SearchPatterns"] = {
							"VSDODGESELFOTHER", -- [1]
							"SPELLDODGEDSELFOTHER", -- [2]
						},
					},
				},
				["MSBT_TRIGGER_LOW_MANA"] = {
					["EventSettings"] = {
						["Color"] = {
							["r"] = 0.5,
							["g"] = 0.5,
							["b"] = 1,
						},
						["Message"] = "Low Mana! (%1)",
						["NormalFontSize"] = 26,
					},
					["TriggerSettings"] = {
						["Classes"] = {
							["HUNTER"] = true,
							["WARLOCK"] = true,
							["PALADIN"] = true,
							["MAGE"] = true,
							["DRUID"] = true,
							["SHAMAN"] = true,
							["PRIEST"] = true,
						},
						["TriggerType"] = 2,
						["Threshold"] = 35,
					},
				},
				["MSBT_TRIGGER_MONGOOSE_BITE"] = {
					["EventSettings"] = {
						["Message"] = "Mongoose Bite!",
						["Color"] = {
							["r"] = 1,
							["g"] = 1,
							["b"] = 0,
						},
						["AlwaysSticky"] = true,
						["NormalFontSize"] = 26,
					},
					["TriggerSettings"] = {
						["Classes"] = {
							["HUNTER"] = true,
						},
						["TriggerEvents"] = {
							"CHAT_MSG_COMBAT_CREATURE_VS_SELF_MISSES", -- [1]
							"CHAT_MSG_COMBAT_HOSTILEPLAYER_MISSES", -- [2]
							"CHAT_MSG_COMBAT_PARTY_MISSES", -- [3]
							"CHAT_MSG_SPELL_CREATURE_VS_SELF_DAMAGE", -- [4]
							"CHAT_MSG_SPELL_HOSTILEPLAYER_DAMAGE", -- [5]
							"CHAT_MSG_SPELL_PARTY_DAMAGE", -- [6]
						},
						["TriggerType"] = 6,
						["SearchPatterns"] = {
							"VSDODGEOTHERSELF", -- [1]
							"SPELLDODGEDOTHERSELF", -- [2]
						},
					},
				},
				["MSBT_TRIGGER_EXECUTE"] = {
					["EventSettings"] = {
						["Message"] = "Execute!",
						["Color"] = {
							["r"] = 1,
							["g"] = 1,
							["b"] = 0,
						},
						["AlwaysSticky"] = true,
						["NormalFontSize"] = 26,
					},
					["TriggerSettings"] = {
						["Classes"] = {
							["WARRIOR"] = true,
							["PALADIN"] = true,
						},
						["TriggerType"] = 4,
						["Threshold"] = 20,
					},
				},
			},
			["ThrottleTime"] = 2,
		},
	},
}
