
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
		["GridStatusRange"] = {
			["profiles"] = {
				["class/Priest"] = {
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
		["GridStatus"] = {
			["profiles"] = {
				["class/Priest"] = {
				},
				["Default"] = {
					["range"] = true,
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
		["GridRange"] = {
			["profiles"] = {
				["class/Priest"] = {
				},
			},
		},
		["GridStatusHealth"] = {
			["profiles"] = {
				["class/Priest"] = {
				},
				["Default"] = {
					["unit_healthDeficit"] = {
						["range"] = true,
					},
					["alert_offline"] = {
						["color"] = {
							["g"] = 0.5,
							["r"] = 0.5,
						},
						["priority"] = 0,
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
		["GridStatusTarget"] = {
			["profiles"] = {
				["class/Priest"] = {
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
	["currentProfile"] = {
		["Beardyhead of Icecrown"] = "class",
	},
}
