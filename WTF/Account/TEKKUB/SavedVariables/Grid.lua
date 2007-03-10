
GridDB = {
	["namespaces"] = {
		["GridFrame"] = {
			["profiles"] = {
				["class/Priest"] = {
					["statusmap"] = {
						["corner2"] = {
							["buff_Rejuvenation"] = true,
							["buff_PowerWordShield"] = true,
							["buff_Renew"] = true,
						},
						["corner3"] = {
							["debuff_magic"] = false,
						},
						["text"] = {
							["alert_offline"] = false,
						},
						["icon"] = {
							["debuff_curse"] = false,
							["debuff_poison"] = false,
							["debuff_disease"] = false,
						},
						["border"] = {
							["debuff_magic"] = false,
						},
					},
				},
				["Default"] = {
					["FrameSize"] = 26,
					["statusmap"] = {
						["border"] = {
							["debuff_magic"] = true,
						},
					},
				},
			},
		},
		["GridStatusTarget"] = {
			["profiles"] = {
				["class/Priest"] = {
				},
			},
		},
		["GridStatusRange"] = {
			["profiles"] = {
				["class/Priest"] = {
				},
			},
		},
		["GridStatus"] = {
			["profiles"] = {
				["class/Priest"] = {
				},
				["Default"] = {
					["range"] = true,
				},
			},
		},
		["GridStatusName"] = {
			["profiles"] = {
				["class/Priest"] = {
				},
				["Default"] = {
					["unit_name"] = {
						["letters"] = 3,
					},
				},
			},
		},
		["GridStatusHeals"] = {
			["profiles"] = {
				["class/Priest"] = {
				},
				["Default"] = {
					["alert_heals"] = {
						["range"] = true,
						["text"] = "incoming heals",
					},
				},
			},
		},
		["GridStatusAggro"] = {
			["profiles"] = {
				["class/Priest"] = {
				},
				["Default"] = {
					["alert_aggro"] = {
						["range"] = true,
					},
				},
			},
		},
		["GridStatusAuras"] = {
			["profiles"] = {
				["class/Priest"] = {
				},
				["Default"] = {
					["debuff_curse"] = {
						["range"] = true,
					},
					["debuff_poison"] = {
						["range"] = true,
					},
					["debuff_MortalStrike"] = {
						["range"] = true,
					},
					["buff_Rejuvenation"] = {
						["range"] = true,
					},
					["buff_PowerWordShield"] = {
						["range"] = true,
					},
					["buff_Renew"] = {
						["range"] = true,
					},
					["debuff_WeakenedSoul"] = {
						["range"] = true,
					},
					["debuff_disease"] = {
						["range"] = true,
					},
					["debuff_magic"] = {
						["range"] = true,
					},
				},
			},
		},
		["GridStatusHealth"] = {
			["profiles"] = {
				["class/Priest"] = {
				},
				["Default"] = {
					["alert_offline"] = {
						["color"] = {
							["g"] = 0.5,
							["r"] = 0.5,
						},
						["priority"] = 0,
					},
					["unit_healthDeficit"] = {
						["range"] = true,
					},
					["alert_lowHealth"] = {
						["range"] = true,
					},
					["unit_health"] = {
						["range"] = true,
					},
				},
			},
		},
		["GridRange"] = {
			["profiles"] = {
				["class/Priest"] = {
				},
			},
		},
		["GridLayout"] = {
			["profiles"] = {
				["class/Priest"] = {
					["anchorRel"] = "TOPLEFT",
					["PosY"] = -492.3734026419318,
					["PosX"] = 220.1066717933606,
				},
				["Default"] = {
					["anchorRel"] = "TOPLEFT",
					["showParty"] = true,
					["FrameDisplay"] = "always",
					["PosY"] = 0,
					["PosX"] = 222.6666499529367,
				},
			},
		},
		["GridStatusMana"] = {
			["profiles"] = {
				["class/Priest"] = {
				},
				["Default"] = {
					["alert_lowMana"] = {
						["range"] = true,
					},
				},
			},
		},
	},
	["currentProfile"] = {
		["Beardyhead of Icecrown"] = "class",
	},
	["profiles"] = {
		["class/Priest"] = {
			["detachedTooltip"] = {
			},
		},
		["Default"] = {
			["detachedTooltip"] = {
			},
			["showText"] = false,
		},
	},
}
