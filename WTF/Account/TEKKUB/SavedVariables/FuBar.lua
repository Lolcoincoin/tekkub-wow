
FuBar2DB = {
	["profiles"] = {
		["char/Beardyhead of Icecrown"] = {
			["fontSize"] = 12,
			["loadOnDemand"] = {
				["FuBar_QuestsFu"] = {
					["title"] = "QuestsFu",
					["category"] = "Quest",
				},
				["FuBar_ToFu"] = {
					["title"] = "ToFu",
					["category"] = "Interface Enhancements",
				},
				["FuBar_ClockFu"] = {
					["title"] = "ClockFu",
					["category"] = "Interface Enhancements",
				},
				["FuBar_FuXPFu"] = {
					["title"] = "FuXP",
					["category"] = "bars",
				},
				["FuBar_ReagentFu"] = {
					["title"] = "ReagentFu",
					["category"] = "inventory",
				},
				["FuBar_LocationFu"] = {
					["title"] = "LocationFu",
					["category"] = "Map",
				},
				["FuBar_AmmoFu"] = {
					["title"] = "AmmoFu",
					["category"] = "inventory",
				},
				["FuBar_VolumeFu"] = {
					["title"] = "VolumeFu",
					["category"] = "Audio",
				},
				["FuBar_GroupFu"] = {
					["title"] = "GroupFu",
					["category"] = "interface",
				},
				["FuBar_Transporter"] = {
					["title"] = "Transporter",
					["category"] = "others",
				},
				["FuBar_PerformanceFu"] = {
					["title"] = "PerformanceFu",
					["category"] = "Interface Enhancements",
				},
				["Fubar_ExitFu"] = {
					["title"] = "ExitFu",
					["category"] = "Interface Enhancements",
				},
			},
			["adjust"] = false,
			["tooltip"] = {
			},
			["panels"] = {
				{
					["xPercent"] = 0,
					["attachPoint"] = "TOP",
					["widthPercent"] = 0.5,
					["plugins"] = {
						["right"] = {
							"ClockFu", -- [1]
							"VolumeFu", -- [2]
							"DeuceCommander", -- [3]
							"Grid", -- [4]
						},
						["center"] = {
						},
						["left"] = {
							"LocationFu", -- [1]
							"ExperienceFu", -- [2]
							"PerformanceFu", -- [3]
							"Name ToggleFu", -- [4]
							"Itemized Deductions", -- [5]
							"tekSupport", -- [6]
							"AmmoFu", -- [7]
							"FriendsFu", -- [8]
							"DuraTek", -- [9]
							"ToFu", -- [10]
							"FuXPFu", -- [11]
							"Quecho", -- [12]
							"CombatantsFu", -- [13]
							"LockFu", -- [14]
							"Detox", -- [15]
							"HeyFu", -- [16]
							"GCInFu", -- [17]
						},
					},
					["yPercent"] = 0.5,
				}, -- [1]
				{
					["xPercent"] = 0,
					["attachPoint"] = "BOTTOM",
					["widthPercent"] = 0.5,
					["plugins"] = {
						["right"] = {
							"MiniClockFu", -- [1]
						},
						["center"] = {
						},
						["left"] = {
							"CorkFu", -- [1]
							"BugSack ", -- [2]
							"MailFu", -- [3]
							"MountMe", -- [4]
							"AceGCInFu", -- [5]
							"Tracker", -- [6]
							"PeriodicMenu", -- [7]
							"GuildFu", -- [8]
							"ModMenuTuFu", -- [9]
							"RefreshmentsFu", -- [10]
							"QuestsFu", -- [11]
							"ArcHUD", -- [12]
							"BugSack", -- [13]
							"PoisonFu -Ace2-", -- [14]
							"Mount Me!", -- [15]
							"oRA2", -- [16]
						},
					},
					["yPercent"] = 0.5,
				}, -- [2]
				{
					["xPercent"] = 0,
					["attachPoint"] = "TOP",
					["widthPercent"] = 0.5,
					["plugins"] = {
						["right"] = {
							"ExitFu", -- [1]
						},
						["center"] = {
						},
						["left"] = {
							"tekProber", -- [1]
							"MrPlowFu", -- [2]
							"GroupFu", -- [3]
							"GreedBeacon", -- [4]
							"ReagentFu", -- [5]
							"Transporter", -- [6]
							"FactionsFu", -- [7]
							"FuXP", -- [8]
							"Combatants", -- [9]
							"Squishy", -- [10]
							"Supply & Demand", -- [11]
							"Periodic Menu", -- [12]
							"OneView", -- [13]
							"Manufac", -- [14]
							"Bartender2Fu", -- [15]
							"Mr Plow", -- [16]
							"GarbageFu", -- [17]
						},
					},
					["yPercent"] = 0.5,
				}, -- [3]
			},
			["minimap"] = {
			},
			["thickness"] = 5,
			["transparency"] = 0.8,
			["overflow"] = true,
			["centerSpacing"] = 20,
			["rightSpacing"] = 20,
			["places"] = {
				["right"] = {
					["PetitionFu"] = true,
				},
				["left"] = {
					["PaintBall"] = true,
					["Experienced"] = true,
					["CoinPurse"] = true,
					["oRA Menu"] = true,
					["FarmerFu"] = true,
					["KeyQ"] = true,
					["Improved Raid Warning Frame"] = true,
				},
			},
			["detached"] = {
				["PetitionFu"] = true,
				["Experienced"] = true,
				["Improved Raid Warning Frame"] = true,
				["PaintBall"] = true,
				["CoinPurse"] = true,
				["FarmerFu"] = true,
				["KeyQ"] = true,
				["oRA Menu"] = true,
			},
		},
		["Default"] = {
			["fontSize"] = 13,
			["skinB"] = 0,
			["adjust"] = true,
			["panels"] = {
				{
					["xPercent"] = 0,
					["attachPoint"] = "TOP",
					["lock"] = false,
					["plugins"] = {
						["right"] = {
							"ExitFu", -- [1]
							"MountMe", -- [2]
							"LocationFu", -- [3]
							"GCInFu", -- [4]
							"PerformanceFu", -- [5]
							"HeyFu", -- [6]
							"Mount Me!", -- [7]
							"Mount Me!  -Ace-", -- [8]
						},
						["center"] = {
							"CorkFu", -- [1]
							"CombatantsFu", -- [2]
							"PoisonFu -Ace2-", -- [3]
							"Detox", -- [4]
							"RefreshmentsFu", -- [5]
							"Watersports", -- [6]
						},
						["left"] = {
							"FriendsFu", -- [1]
							"GroupFu", -- [2]
							"ExperienceFu", -- [3]
							"ModMenuTu|cff00ff00Fu", -- [4]
							"Factions|cff00ff00Fu", -- [5]
							"Mail|cff00ff00Fu", -- [6]
							"Name Toggle|cff00ff00Fu", -- [7]
							"PerfectRaid Targets  -Ace-", -- [8]
							"Transcriptor", -- [9]
							"ClosetGnome", -- [10]
							"otravi_Skin", -- [11]
							"Banzai Alert -Ace2-", -- [12]
							"FuXPFu", -- [13]
							"GreedBeacon", -- [14]
							"GuildFu", -- [15]
						},
					},
					["widthPercent"] = 1,
					["yPercent"] = 0.9849044486544522,
				}, -- [1]
				{
					["xPercent"] = 1.054329493710426e-007,
					["attachPoint"] = "BOTTOM",
					["lock"] = false,
					["plugins"] = {
						["right"] = {
							"FactionsFu", -- [1]
							[0] = "Grid",
						},
						["center"] = {
							"AmmoFu", -- [1]
							"GarbageFu", -- [2]
							"CoinPurse", -- [3]
							"ReagentFu", -- [4]
							"DuraTek", -- [5]
							"Itemized Deductions", -- [6]
						},
						["left"] = {
							"ModMenuTuFu", -- [1]
							"DeuceCommander", -- [2]
							"Supply & Demand", -- [3]
							"Name ToggleFu", -- [4]
							"MSBT Cooldowns", -- [5]
							"LockFu", -- [6]
							"Quecho", -- [7]
							"Periodic Menu", -- [8]
							"Mr Plow", -- [9]
							"MrPlowFu", -- [10]
							"tekSupport", -- [11]
							"iTemFu", -- [12]
							"Prat", -- [13]
							"Big Wigs", -- [14]
							"Grid", -- [15]
							"VolumeFu", -- [16]
							[0] = "Name Toggle|cff00ff00Fu",
						},
					},
					["widthPercent"] = 1,
					["yPercent"] = 7.812406016415952e-005,
				}, -- [2]
			},
			["minimap"] = {
			},
			["skin"] = "Interface\\AddOns\\FuBar\\background",
			["centerSpacing"] = 10,
			["skinR"] = 0,
			["loadOnDemand"] = {
				["FuBar_ReagentFu"] = {
					["title"] = "ReagentFu",
					["category"] = "Inventory",
				},
				["FuBar_iTemFu"] = {
					["title"] = "iTemFu",
					["category"] = "Other",
				},
				["FuBar_ToFu"] = {
					["title"] = "ToFu",
					["category"] = "Data Export",
				},
				["PeriodicMenu"] = {
					["title"] = "Periodic Menu",
					["category"] = "inventory",
				},
				["tekSupport"] = {
				},
				["FuBar_FwgFu"] = {
					["title"] = "FelwoodGather",
					["disabled"] = true,
					["category"] = "map",
				},
				["FuBar_VolumeFu"] = {
					["title"] = "VolumeFu",
					["category"] = "Audio",
				},
				["FuBar_GroupFu"] = {
					["title"] = "GroupFu",
					["category"] = "Miscellaneous",
				},
				["FuBar_LocationFu"] = {
					["title"] = "LocationFu",
					["category"] = "Map",
				},
				["FuBar_PerformanceFu"] = {
					["title"] = "PerformanceFu",
					["category"] = "Interface Enhancements",
				},
				["Watersports"] = {
				},
				["FuBar_QuestsFu"] = {
					["title"] = "QuestsFu",
					["category"] = "Quest",
				},
				["FuBar_RefreshmentsFu"] = {
				},
				["FuBar_ClockFu"] = {
					["disabled"] = true,
					["title"] = "ClockFu",
					["category"] = "Interface Enhancements",
				},
				["FuBar_LockFu"] = {
					["title"] = "LockFu",
					["category"] = "others",
				},
				["FuBar_AmmoFu"] = {
					["title"] = "AmmoFu",
					["category"] = "Inventory",
				},
				["oRA2"] = {
				},
				["FuBar_GarbageFu"] = {
					["title"] = "GarbageFu",
					["category"] = "Inventory",
				},
				["tekProber"] = {
				},
				["FuBar_Transporter"] = {
					["title"] = "Transporter",
					["category"] = "others",
				},
				["FuBar_FuXPFu"] = {
					["title"] = "FuXP",
					["category"] = "bars",
				},
				["Fubar_ExitFu"] = {
					["title"] = "ExitFu",
					["category"] = "Interface Enhancements",
				},
			},
			["tooltip"] = {
				["transparency"] = 1,
				["fontSizePercent"] = 1,
			},
			["rightSpacing"] = 10,
			["detached"] = {
				["PetitionFu"] = true,
				["Experienced"] = true,
				["Manufac"] = true,
				["ArcHUD"] = true,
				["AceGCInFu"] = true,
				["FelwoodGather"] = true,
				["PaintBall"] = true,
				["Improved Raid Warning Frame"] = true,
				["ToFu"] = true,
				["KeyQ"] = true,
				["QuestsFu"] = true,
				["oRA Menu"] = true,
				["OneView"] = true,
				["Tracker"] = true,
				["MailFu"] = true,
				["ClockFu"] = true,
				["Squishy"] = true,
				["FarmerFu"] = true,
				["oRA2"] = true,
				["CoinPurse"] = true,
				["Bartender2Fu"] = true,
			},
			["skinG"] = 0,
			["transparency"] = 1,
			["leftSpacing"] = 10,
			["thickness"] = 5,
			["places"] = {
				["right"] = {
					["PetitionFu"] = true,
					["Tracker"] = true,
					["MailFu"] = true,
					["ToFu"] = true,
					["KeyQ"] = true,
					["QuestsFu"] = true,
				},
				["center"] = {
				},
				["left"] = {
					["ClockFu"] = true,
					["Experienced"] = true,
					["oRA2"] = true,
					["Manufac"] = true,
					["oRA Menu"] = true,
					["AceGCInFu"] = true,
					["Improved Raid Warning Frame"] = true,
					["FelwoodGather"] = true,
					["PaintBall"] = true,
					["OneView"] = true,
					["CoinPurse"] = true,
					["Squishy"] = true,
					["FarmerFu"] = true,
					["ArcHUD"] = true,
					["Bartender2Fu"] = true,
				},
			},
			["overflow"] = true,
		},
		["char/Tekkub of Icecrown"] = {
			["fontSize"] = 12,
			["loadOnDemand"] = {
				["FuBar_ReagentFu"] = {
					["title"] = "ReagentFu",
					["category"] = "Inventory",
				},
				["PeriodicMenu"] = {
					["title"] = "Periodic Menu",
					["category"] = "inventory",
				},
				["FuBar_AmmoFu"] = {
					["title"] = "AmmoFu",
					["category"] = "Inventory",
				},
				["FuBar_LocationFu"] = {
					["title"] = "LocationFu",
					["category"] = "Map",
				},
				["FuBar_LockFu"] = {
					["title"] = "LockFu",
					["category"] = "others",
				},
				["FuBar_VolumeFu"] = {
					["title"] = "VolumeFu",
					["category"] = "Audio",
				},
				["FuBar_GroupFu"] = {
					["title"] = "GroupFu",
					["category"] = "Miscellaneous",
				},
				["FuBar_Transporter"] = {
					["title"] = "Transporter",
					["category"] = "others",
				},
				["FuBar_PerformanceFu"] = {
					["title"] = "PerformanceFu",
					["category"] = "Interface Enhancements",
				},
				["Fubar_ExitFu"] = {
					["title"] = "ExitFu",
					["category"] = "Interface Enhancements",
				},
			},
			["adjust"] = true,
			["tooltip"] = {
			},
			["panels"] = {
				{
					["xPercent"] = 0,
					["attachPoint"] = "TOP",
					["plugins"] = {
						["right"] = {
							"ClockFu", -- [1]
							"VolumeFu", -- [2]
							"MiniClockFu", -- [3]
						},
						["center"] = {
						},
						["left"] = {
							"LocationFu", -- [1]
							"ExperienceFu", -- [2]
							"PerformanceFu", -- [3]
							"MrPlowFu", -- [4]
							"Detox", -- [5]
							"Name ToggleFu", -- [6]
							"BugSack", -- [7]
							"FactionsFu", -- [8]
							"DuraTek", -- [9]
							"FriendsFu", -- [10]
							"GuildFu", -- [11]
							"ModMenuTuFu", -- [12]
							"CorkFu", -- [13]
							"OneView", -- [14]
							"Transporter", -- [15]
							"Mount Me!", -- [16]
							"LockFu", -- [17]
							"Supply & Demand", -- [18]
							"Quecho", -- [19]
							"oRA2", -- [20]
							"Improved Raid Warning Frame", -- [21]
						},
					},
					["widthPercent"] = 1,
					["yPercent"] = 0.5,
				}, -- [1]
				{
					["xPercent"] = 0,
					["attachPoint"] = "BOTTOM",
					["plugins"] = {
						["right"] = {
							"DeuceCommander", -- [1]
						},
						["center"] = {
						},
						["left"] = {
							"ArcHUD", -- [1]
							"HeyFu", -- [2]
							"GreedBeacon", -- [3]
							"FuXPFu", -- [4]
							"Big Wigs", -- [5]
							"CombatantsFu", -- [6]
							"Periodic Menu", -- [7]
							"MailFu", -- [8]
							"CoinPurse", -- [9]
							"Tracker", -- [10]
							"GarbageFu", -- [11]
							"AmmoFu", -- [12]
							"QuestsFu", -- [13]
							"ReagentFu", -- [14]
							"GCInFu", -- [15]
							"GroupFu", -- [16]
						},
					},
					["widthPercent"] = 1,
					["yPercent"] = 0.5,
				}, -- [2]
				{
					["xPercent"] = 0,
					["attachPoint"] = "TOP",
					["plugins"] = {
						["right"] = {
							"ExitFu", -- [1]
						},
						["center"] = {
						},
						["left"] = {
							"Bartender2Fu", -- [1]
						},
					},
					["widthPercent"] = 1,
					["yPercent"] = 0.5,
				}, -- [3]
				{
					["xPercent"] = 0,
					["attachPoint"] = "TOP",
					["plugins"] = {
						["right"] = {
						},
						["center"] = {
						},
						["left"] = {
							"PoisonFu -Ace2-", -- [1]
						},
					},
					["widthPercent"] = 1,
					["yPercent"] = 0.5,
				}, -- [4]
			},
			["detached"] = {
				["PetitionFu"] = true,
				["KeyQ"] = true,
				["PaintBall"] = true,
			},
			["thickness"] = 5,
			["places"] = {
				["right"] = {
					["PetitionFu"] = true,
				},
				["left"] = {
					["PaintBall"] = true,
					["KeyQ"] = true,
				},
			},
			["minimap"] = {
			},
		},
	},
	["pluginDB"] = {
		["PetitionFu"] = {
			["profiles"] = {
				["default"] = {
					["version"] = 102,
					["disabled"] = true,
				},
			},
		},
		["CoinPurse"] = {
			["profiles"] = {
				["default"] = {
					["version"] = 100,
					["disabled"] = true,
				},
			},
		},
		["oRA Menu"] = {
			["profiles"] = {
				["default"] = {
					["version"] = 2,
					["disabled"] = true,
				},
			},
		},
		["KeyQ"] = {
			["profiles"] = {
				["default"] = {
					["version"] = 0,
					["disabled"] = true,
				},
			},
		},
	},
}
