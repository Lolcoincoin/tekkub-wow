
MikSBT_SavedVars = {
	["Profiles"] = {
		["Default"] = {
			["ScrollAreaSettings"] = {
				{
					["Name"] = "Incoming",
					["OffsetX"] = -60,
					["TextAlignIndex"] = 3,
					["OffsetY"] = -160,
					["AnimationStyle"] = "LeftParabola",
					["Reversed"] = true,
				}, -- [1]
				{
					["OffsetX"] = 60,
					["OffsetY"] = -160,
					["AnimationStyle"] = "RightParabola",
					["Name"] = "Outgoing",
				}, -- [2]
				{
					["TextAlignIndex"] = 2,
					["ScrollHeight"] = 150,
					["Name"] = "Notification",
					["OffsetY"] = 100,
				}, -- [3]
			},
			["EventSettings"] = {
				["PET_PARRY"] = {
					["Message"] = "Pet Parry",
					["Color"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
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
						["b"] = 0,
						["g"] = 0.918,
						["r"] = 0.918,
					},
				},
				["INCOMING_SPELL_PARRY"] = {
					["Message"] = "(%s) Parry!",
					["Color"] = {
						["b"] = 1,
						["g"] = 0,
						["r"] = 0,
					},
					["ScrollAreaIndex"] = 1,
				},
				["INCOMING_HOT"] = {
					["Message"] = "(%s - %n) +%a",
					["Color"] = {
						["b"] = 0,
						["g"] = 1,
						["r"] = 0,
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
						["b"] = 0.628,
						["g"] = 0,
						["r"] = 0.628,
					},
					["AlwaysSticky"] = true,
					["NormalFontSize"] = 26,
				},
				["OUTGOING_SPELL_IMMUNE"] = {
					["Message"] = "Immune! (%s)",
					["Color"] = {
						["b"] = 0,
						["g"] = 1,
						["r"] = 1,
					},
					["ScrollAreaIndex"] = 2,
				},
				["INCOMING_HEAL"] = {
					["Message"] = "(%s - %n) +%a",
					["ScrollAreaIndex"] = 1,
					["Color"] = {
						["b"] = 0,
						["g"] = 1,
						["r"] = 0,
					},
					["CanCrit"] = true,
				},
				["PET_SPELL_ABSORB"] = {
					["Message"] = "Pet Absorb! (%s)",
					["Color"] = {
						["b"] = 1,
						["g"] = 0.5,
						["r"] = 0.5,
					},
					["ScrollAreaIndex"] = 2,
				},
				["OUTGOING_HEAL"] = {
					["CritFontSize"] = 22,
					["CanCrit"] = true,
					["Color"] = {
						["b"] = 0,
						["g"] = 1,
						["r"] = 0,
					},
					["Message"] = "+%a (%s - %n)",
					["ScrollAreaIndex"] = 2,
				},
				["PET_SPELL_DAMAGE"] = {
					["Message"] = "Pet %a (%s)",
					["ScrollAreaIndex"] = 2,
					["Color"] = {
						["b"] = 1,
						["g"] = 0.33,
						["r"] = 0.33,
					},
					["CanCrit"] = true,
				},
				["INCOMING_SPELL_MISS"] = {
					["Message"] = "(%s) Miss!",
					["Color"] = {
						["b"] = 1,
						["g"] = 0,
						["r"] = 0,
					},
					["ScrollAreaIndex"] = 1,
				},
				["PET_SPELL_PARRY"] = {
					["Message"] = "Pet Parry! (%s)",
					["Color"] = {
						["b"] = 1,
						["g"] = 0.33,
						["r"] = 0.33,
					},
					["ScrollAreaIndex"] = 2,
				},
				["NOTIFICATION_HONOR_GAIN"] = {
					["Message"] = "+%a Honor",
					["Color"] = {
						["b"] = 0.698,
						["g"] = 0.5,
						["r"] = 0.5,
					},
				},
				["NOTIFICATION_ITEM_BUFF_FADE"] = {
					["Message"] = "-[%s]",
					["Color"] = {
						["b"] = 0.831,
						["g"] = 0.831,
						["r"] = 0.831,
					},
				},
				["INCOMING_IMMUNE"] = {
					["Message"] = "Immune!",
					["Color"] = {
						["b"] = 0,
						["g"] = 1,
						["r"] = 1,
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
						["b"] = 0,
						["g"] = 1,
						["r"] = 1,
					},
				},
				["OUTGOING_SPELL_PARRY"] = {
					["Message"] = "Parry! (%s)",
					["ScrollAreaIndex"] = 2,
				},
				["OUTGOING_SPELL_EVADE"] = {
					["Message"] = "Evade! (%s)",
					["ScrollAreaIndex"] = 2,
					["Color"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["NormalFontSize"] = 22,
				},
				["INCOMING_ABSORB"] = {
					["Message"] = "Absorb!",
					["Color"] = {
						["b"] = 0,
						["g"] = 1,
						["r"] = 1,
					},
					["ScrollAreaIndex"] = 1,
				},
				["PET_SPELL_IMMUNE"] = {
					["Message"] = "Pet Immune! (%s)",
					["Color"] = {
						["b"] = 1,
						["g"] = 0.5,
						["r"] = 0.5,
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
						["b"] = 1,
						["g"] = 0,
						["r"] = 0,
					},
					["ScrollAreaIndex"] = 1,
				},
				["NOTIFICATION_CP_GAIN"] = {
					["Message"] = "%a CP",
					["Color"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
				},
				["NOTIFICATION_REP_GAIN"] = {
					["Message"] = "+%a Reputation (%s)",
					["Color"] = {
						["b"] = 0.698,
						["g"] = 0.5,
						["r"] = 0.5,
					},
				},
				["PET_SPELL_MISS"] = {
					["Message"] = "Pet Miss! (%s)",
					["Color"] = {
						["b"] = 1,
						["g"] = 0.33,
						["r"] = 0.33,
					},
					["ScrollAreaIndex"] = 2,
				},
				["NOTIFICATION_DEBUFF_FADE"] = {
					["Message"] = "-[%s]",
					["Color"] = {
						["b"] = 0.835,
						["g"] = 0.835,
						["r"] = 0,
					},
				},
				["INCOMING_SPELL_DAMAGE"] = {
					["Message"] = "(%s) -%a",
					["ScrollAreaIndex"] = 1,
					["Color"] = {
						["b"] = 0,
						["g"] = 0,
						["r"] = 1,
					},
					["CanCrit"] = true,
				},
				["NOTIFICATION_SKILL_GAIN"] = {
					["Message"] = "%s: %a",
					["Color"] = {
						["b"] = 1,
						["g"] = 0.333,
						["r"] = 0.333,
					},
				},
				["PET_MISS"] = {
					["Message"] = "Pet Miss",
					["Color"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["ScrollAreaIndex"] = 2,
				},
				["OUTGOING_EVADE"] = {
					["Message"] = "Evade!",
					["ScrollAreaIndex"] = 2,
					["Color"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["NormalFontSize"] = 22,
				},
				["INCOMING_BLOCK"] = {
					["Message"] = "Block!",
					["Color"] = {
						["b"] = 1,
						["g"] = 0,
						["r"] = 0,
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
						["b"] = 0,
						["g"] = 1,
						["r"] = 1,
					},
					["ScrollAreaIndex"] = 2,
				},
				["PET_SPELL_EVADE"] = {
					["Message"] = "Pet Evade! (%s)",
					["Color"] = {
						["b"] = 1,
						["g"] = 0.5,
						["r"] = 1,
					},
					["ScrollAreaIndex"] = 2,
				},
				["OUTGOING_SPELL_DAMAGE"] = {
					["Message"] = "%a (%s)",
					["ScrollAreaIndex"] = 2,
					["Color"] = {
						["b"] = 0,
						["g"] = 1,
						["r"] = 1,
					},
					["CanCrit"] = true,
				},
				["OUTGOING_DAMAGE"] = {
					["Message"] = "%a",
					["ScrollAreaIndex"] = 2,
					["CanCrit"] = true,
				},
				["PET_IMMUNE"] = {
					["Message"] = "Pet Immune",
					["Color"] = {
						["b"] = 1,
						["g"] = 0.5,
						["r"] = 0.5,
					},
					["ScrollAreaIndex"] = 2,
				},
				["INCOMING_SPELL_DODGE"] = {
					["Message"] = "(%s) Dodge!",
					["Color"] = {
						["b"] = 1,
						["g"] = 0,
						["r"] = 0,
					},
					["ScrollAreaIndex"] = 1,
				},
				["NOTIFICATION_CP_FULL"] = {
					["Message"] = "%a CP Finish It!",
					["Color"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
				},
				["INCOMING_DAMAGE"] = {
					["Message"] = "(%n) -%a",
					["ScrollAreaIndex"] = 1,
					["Color"] = {
						["b"] = 0,
						["g"] = 0,
						["r"] = 1,
					},
					["CanCrit"] = true,
				},
				["NOTIFICATION_ITEM_BUFF"] = {
					["Message"] = "[%s]",
					["Color"] = {
						["b"] = 0.698,
						["g"] = 0.698,
						["r"] = 0.698,
					},
				},
				["NOTIFICATION_COMBAT_LEAVE"] = {
					["Message"] = "-Combat",
				},
				["OUTGOING_ABSORB"] = {
					["Message"] = "Absorb!",
					["Color"] = {
						["b"] = 0,
						["g"] = 1,
						["r"] = 1,
					},
					["ScrollAreaIndex"] = 2,
				},
				["INCOMING_SPELL_BLOCK"] = {
					["Message"] = "(%s) Block!",
					["Color"] = {
						["b"] = 1,
						["g"] = 0,
						["r"] = 0,
					},
					["ScrollAreaIndex"] = 1,
				},
				["NOTIFICATION_COMBAT_ENTER"] = {
					["Message"] = "+Combat",
				},
				["PET_SPELL_DODGE"] = {
					["Message"] = "Pet Dodge! (%s)",
					["Color"] = {
						["b"] = 1,
						["g"] = 0.33,
						["r"] = 0.33,
					},
					["ScrollAreaIndex"] = 2,
				},
				["PET_DAMAGE"] = {
					["Message"] = "Pet %a",
					["ScrollAreaIndex"] = 2,
					["Color"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["CanCrit"] = true,
				},
				["NOTIFICATION_PC_KILLING_BLOW"] = {
					["Message"] = "Killing Blow! (%s)",
					["Color"] = {
						["b"] = 1,
						["g"] = 0.333,
						["r"] = 0.333,
					},
					["AlwaysSticky"] = true,
					["NormalFontSize"] = 26,
				},
				["NOTIFICATION_EXPERIENCE_GAIN"] = {
					["Message"] = "%a XP",
					["Disabled"] = true,
					["Color"] = {
						["b"] = 0.823,
						["g"] = 0.27,
						["r"] = 0.756,
					},
					["AlwaysSticky"] = true,
					["NormalFontSize"] = 26,
				},
				["NOTIFICATION_REP_LOSS"] = {
					["Message"] = "-%a Reputation (%s)",
					["Color"] = {
						["b"] = 0.698,
						["g"] = 0.5,
						["r"] = 0.5,
					},
				},
				["INCOMING_MISS"] = {
					["Message"] = "Miss!",
					["Color"] = {
						["b"] = 1,
						["g"] = 0,
						["r"] = 0,
					},
					["ScrollAreaIndex"] = 1,
				},
				["INCOMING_SPELL_DOT"] = {
					["Message"] = "(%s) -%a",
					["Color"] = {
						["b"] = 0,
						["g"] = 0,
						["r"] = 1,
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
						["b"] = 0.698,
						["g"] = 0.5,
						["r"] = 0.5,
					},
					["ScrollAreaIndex"] = 2,
				},
				["NOTIFICATION_EXTRA_ATTACK"] = {
					["Message"] = "%s!",
					["Color"] = {
						["b"] = 0,
						["g"] = 1,
						["r"] = 1,
					},
					["AlwaysSticky"] = true,
					["NormalFontSize"] = 26,
				},
				["NOTIFICATION_DEBUFF"] = {
					["Message"] = "[%s]",
					["Color"] = {
						["b"] = 0.5,
						["g"] = 0.5,
						["r"] = 0,
					},
				},
				["OUTGOING_SPELL_REFLECT"] = {
					["Message"] = "Reflect! (%s)",
					["ScrollAreaIndex"] = 2,
					["Color"] = {
						["b"] = 0,
						["g"] = 1,
						["r"] = 1,
					},
					["CanCrit"] = true,
				},
				["PET_SPELL_BLOCK"] = {
					["Message"] = "Pet Block! (%s)",
					["Color"] = {
						["b"] = 1,
						["g"] = 0.33,
						["r"] = 0.33,
					},
					["ScrollAreaIndex"] = 2,
				},
				["NOTIFICATION_POWER_GAIN"] = {
					["Message"] = "+%a %s",
					["Color"] = {
						["b"] = 0,
						["g"] = 1,
						["r"] = 1,
					},
				},
				["PET_EVADE"] = {
					["Message"] = "Pet Evade",
					["ScrollAreaIndex"] = 2,
					["Color"] = {
						["b"] = 1,
						["g"] = 0.5,
						["r"] = 1,
					},
					["NormalFontSize"] = 22,
				},
				["INCOMING_SPELL_REFLECT"] = {
					["Message"] = "(%s) Reflect!",
					["ScrollAreaIndex"] = 1,
					["Color"] = {
						["b"] = 0.5,
						["g"] = 0,
						["r"] = 0.5,
					},
					["CanCrit"] = true,
				},
				["OUTGOING_IMMUNE"] = {
					["Message"] = "Immune!",
					["Color"] = {
						["b"] = 0,
						["g"] = 1,
						["r"] = 1,
					},
					["ScrollAreaIndex"] = 2,
				},
				["OUTGOING_HOT"] = {
					["Message"] = "+%a (%s - %n)",
					["Color"] = {
						["b"] = 0,
						["g"] = 1,
						["r"] = 0,
					},
					["ScrollAreaIndex"] = 2,
				},
				["OUTGOING_BLOCK"] = {
					["Message"] = "Block!",
					["ScrollAreaIndex"] = 2,
				},
				["INCOMING_SPELL_IMMUNE"] = {
					["Message"] = "(%s) Immune!",
					["Color"] = {
						["b"] = 0,
						["g"] = 1,
						["r"] = 1,
					},
					["ScrollAreaIndex"] = 1,
				},
				["PET_ABSORB"] = {
					["Message"] = "Pet Absorb",
					["Color"] = {
						["b"] = 1,
						["g"] = 0.5,
						["r"] = 0.5,
					},
					["ScrollAreaIndex"] = 2,
				},
				["PET_DODGE"] = {
					["Message"] = "Pet Dodge",
					["Color"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["ScrollAreaIndex"] = 2,
				},
				["PET_SPELL_RESIST"] = {
					["Message"] = "Pet Resist! (%s)",
					["Color"] = {
						["b"] = 0.698,
						["g"] = 0.5,
						["r"] = 0.5,
					},
					["ScrollAreaIndex"] = 2,
				},
				["INCOMING_ENVIRONMENTAL"] = {
					["Message"] = "-%a %s",
					["Color"] = {
						["b"] = 0,
						["g"] = 0,
						["r"] = 1,
					},
					["ScrollAreaIndex"] = 1,
				},
				["INCOMING_SPELL_RESIST"] = {
					["Message"] = "(%s) Resist!",
					["Color"] = {
						["b"] = 0.5,
						["g"] = 0,
						["r"] = 0.5,
					},
					["ScrollAreaIndex"] = 1,
				},
				["NOTIFICATION_BUFF"] = {
					["Message"] = "[%s]",
					["Color"] = {
						["b"] = 0,
						["g"] = 0.698,
						["r"] = 0.698,
					},
				},
				["PET_BLOCK"] = {
					["Message"] = "Pet Block",
					["Color"] = {
						["b"] = 0,
						["g"] = 0.5,
						["r"] = 1,
					},
					["ScrollAreaIndex"] = 2,
				},
				["NOTIFICATION_NPC_KILLING_BLOW"] = {
					["Message"] = "Killing Blow! (%s)",
					["Disabled"] = true,
					["Color"] = {
						["b"] = 1,
						["g"] = 0.333,
						["r"] = 0.333,
					},
					["AlwaysSticky"] = true,
					["NormalFontSize"] = 26,
				},
				["OUTGOING_SPELL_DOT"] = {
					["Message"] = "%a (%s)",
					["Color"] = {
						["b"] = 0,
						["g"] = 1,
						["r"] = 1,
					},
					["ScrollAreaIndex"] = 2,
				},
				["INCOMING_SPELL_ABSORB"] = {
					["Message"] = "(%s) Absorb!",
					["Color"] = {
						["b"] = 0,
						["g"] = 1,
						["r"] = 1,
					},
					["ScrollAreaIndex"] = 1,
				},
				["INCOMING_PARRY"] = {
					["Message"] = "Parry!",
					["Color"] = {
						["b"] = 1,
						["g"] = 0,
						["r"] = 0,
					},
					["ScrollAreaIndex"] = 1,
				},
			},
			["AnimationSpeed"] = 100,
			["CreationVersion"] = 4.01,
			["PartialEffectSettings"] = {
				["Overheal"] = {
					["Color"] = {
						["b"] = 0.5,
						["g"] = 0.705,
						["r"] = 0,
					},
				},
				["Absorb"] = {
					["Color"] = {
						["b"] = 0,
						["g"] = 1,
						["r"] = 1,
					},
				},
				["Crushing"] = {
					["Color"] = {
						["b"] = 0,
						["g"] = 0,
						["r"] = 0.5,
					},
				},
				["Glancing"] = {
					["Color"] = {
						["b"] = 0,
						["g"] = 0,
						["r"] = 1,
					},
				},
				["Block"] = {
					["Color"] = {
						["b"] = 1,
						["g"] = 0,
						["r"] = 0.5,
					},
				},
				["Resist"] = {
					["Color"] = {
						["b"] = 0.5,
						["g"] = 0,
						["r"] = 0.5,
					},
				},
				["Vulnerability"] = {
					["Color"] = {
						["b"] = 1,
						["g"] = 0.5,
						["r"] = 0.5,
					},
				},
			},
			["GameDamageDisabled"] = true,
			["DamageColorSettings"] = {
				["Shadow"] = {
					["Color"] = {
						["b"] = 0.628,
						["g"] = 0,
						["r"] = 0.628,
					},
				},
				["Physical"] = {
					["Color"] = {
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
				},
				["Arcane"] = {
					["Color"] = {
						["b"] = 1,
						["g"] = 0.725,
						["r"] = 1,
					},
				},
				["Frost"] = {
					["Color"] = {
						["b"] = 1,
						["g"] = 0.5,
						["r"] = 0.5,
					},
				},
				["Fire"] = {
					["Color"] = {
						["b"] = 0.5,
						["g"] = 0.5,
						["r"] = 1,
					},
				},
				["Holy"] = {
					["Color"] = {
						["b"] = 0.627,
						["g"] = 1,
						["r"] = 1,
					},
				},
				["Nature"] = {
					["Color"] = {
						["b"] = 0.5,
						["g"] = 1,
						["r"] = 0.5,
					},
				},
			},
			["Suppressions"] = {
				["MSBT_SUPPRESSION_SHADOW_TRANCE"] = {
					["SearchPattern"] = "%[Shadow Trance%]",
				},
				["MSBT_SUPPRESSION_CLEARCAST"] = {
					["SearchPattern"] = "%[Clearcasting%]",
				},
			},
			["ThrottleTime"] = 2,
			["AnimationStep"] = 2,
			["Triggers"] = {
				["MSBT_TRIGGER_RIPOSTE"] = {
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
					["EventSettings"] = {
						["Message"] = "Riposte!",
						["Color"] = {
							["b"] = 0,
							["g"] = 1,
							["r"] = 1,
						},
						["AlwaysSticky"] = true,
						["NormalFontSize"] = 26,
					},
				},
				["MSBT_TRIGGER_LOW_PET_HEALTH"] = {
					["TriggerSettings"] = {
						["Classes"] = {
							["HUNTER"] = true,
							["WARLOCK"] = true,
							["MAGE"] = true,
						},
						["TriggerType"] = 3,
						["Threshold"] = 40,
					},
					["EventSettings"] = {
						["Color"] = {
							["b"] = 0.5,
							["g"] = 0.5,
							["r"] = 1,
						},
						["Message"] = "Low Pet Health! (%1)",
						["NormalFontSize"] = 26,
					},
				},
				["MSBT_TRIGGER_LOW_HEALTH"] = {
					["TriggerSettings"] = {
						["Threshold"] = 40,
						["TriggerType"] = 1,
					},
					["EventSettings"] = {
						["Message"] = "Low Health! (%1)",
						["Color"] = {
							["b"] = 0.5,
							["g"] = 0.5,
							["r"] = 1,
						},
						["NormalFontSize"] = 26,
					},
				},
				["MSBT_TRIGGER_CLEARCAST"] = {
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
					["EventSettings"] = {
						["Message"] = "Clearcast!",
						["Color"] = {
							["b"] = 0,
							["g"] = 1,
							["r"] = 1,
						},
						["AlwaysSticky"] = true,
						["NormalFontSize"] = 26,
					},
				},
				["MSBT_TRIGGER_NIGHTFALL"] = {
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
					["EventSettings"] = {
						["Message"] = "Nightfall!",
						["Color"] = {
							["b"] = 0.709,
							["g"] = 0,
							["r"] = 0.709,
						},
						["AlwaysSticky"] = true,
						["NormalFontSize"] = 26,
					},
				},
				["MSBT_TRIGGER_COUNTER_ATTACK"] = {
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
					["EventSettings"] = {
						["Message"] = "Counterattack!",
						["Color"] = {
							["b"] = 0,
							["g"] = 1,
							["r"] = 1,
						},
						["AlwaysSticky"] = true,
						["NormalFontSize"] = 26,
					},
				},
				["MSBT_TRIGGER_OVERPOWER"] = {
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
					["EventSettings"] = {
						["Message"] = "Overpower!",
						["Color"] = {
							["b"] = 0,
							["g"] = 1,
							["r"] = 1,
						},
						["AlwaysSticky"] = true,
						["NormalFontSize"] = 26,
					},
				},
				["MSBT_TRIGGER_MONGOOSE_BITE"] = {
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
					["EventSettings"] = {
						["Message"] = "Mongoose Bite!",
						["Color"] = {
							["b"] = 0,
							["g"] = 1,
							["r"] = 1,
						},
						["AlwaysSticky"] = true,
						["NormalFontSize"] = 26,
					},
				},
				["MSBT_TRIGGER_LOW_MANA"] = {
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
					["EventSettings"] = {
						["Color"] = {
							["b"] = 1,
							["g"] = 0.5,
							["r"] = 0.5,
						},
						["Message"] = "Low Mana! (%1)",
						["NormalFontSize"] = 26,
					},
				},
				["MSBT_TRIGGER_EXECUTE"] = {
					["TriggerSettings"] = {
						["Classes"] = {
							["PALADIN"] = true,
							["WARRIOR"] = true,
						},
						["TriggerType"] = 4,
						["Threshold"] = 20,
					},
					["EventSettings"] = {
						["Message"] = "Execute!",
						["Color"] = {
							["b"] = 0,
							["g"] = 1,
							["r"] = 1,
						},
						["AlwaysSticky"] = true,
						["NormalFontSize"] = 26,
					},
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
		},
	},
}
