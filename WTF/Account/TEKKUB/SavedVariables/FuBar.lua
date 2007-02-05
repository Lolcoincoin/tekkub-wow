
FuBar2DB = {
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
	["profiles"] = {
		["char/Beardyhead of Icecrown"] = {
			["fontSize"] = 12,
			["loadOnDemand"] = {
				["FuBar_ReagentFu"] = {
					["title"] = "ReagentFu",
					["category"] = "inventory",
				},
				["FuBar_GroupFu"] = {
					["title"] = "GroupFu",
					["category"] = "interface",
				},
				["FuBar_ToFu"] = {
					["title"] = "ToFu",
					["category"] = "Interface Enhancements",
				},
				["FuBar_QuestsFu"] = {
					["title"] = "QuestsFu",
					["category"] = "Quest",
				},
				["FuBar_FuXPFu"] = {
					["title"] = "FuXP",
					["category"] = "bars",
				},
				["FuBar_AmmoFu"] = {
					["title"] = "AmmoFu",
					["category"] = "inventory",
				},
				["FuBar_LocationFu"] = {
					["title"] = "LocationFu",
					["category"] = "Map",
				},
				["FuBar_VolumeFu"] = {
					["title"] = "VolumeFu",
					["category"] = "Audio",
				},
				["FuBar_ClockFu"] = {
					["title"] = "ClockFu",
					["category"] = "Interface Enhancements",
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
			["rightSpacing"] = 20,
			["minimap"] = {
			},
			["thickness"] = 5,
			["transparency"] = 0.8,
			["overflow"] = true,
			["centerSpacing"] = 20,
			["panels"] = {
				{
					["xPercent"] = 0,
					["attachPoint"] = "TOP",
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
					["widthPercent"] = 0.5,
					["yPercent"] = 0.5,
				}, -- [1]
				{
					["xPercent"] = 0,
					["attachPoint"] = "BOTTOM",
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
					["widthPercent"] = 0.5,
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
					["widthPercent"] = 0.5,
					["yPercent"] = 0.5,
				}, -- [3]
			},
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
				["oRA Menu"] = true,
				["PaintBall"] = true,
				["CoinPurse"] = true,
				["FarmerFu"] = true,
				["KeyQ"] = true,
				["Improved Raid Warning Frame"] = true,
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
					["lock"] = true,
					["plugins"] = {
						["right"] = {
							"ExitFu", -- [1]
							"MountMe", -- [2]
							"LocationFu", -- [3]
							"GCInFu", -- [4]
							"HeyFu", -- [5]
							"Mount Me!", -- [6]
							"Mount Me!  -Ace-", -- [7]
							"PerformanceFu", -- [8]
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
							"MiniClockFu", -- [1]
							"FriendsFu", -- [2]
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
							"GuildFu", -- [14]
							"GroupFu", -- [15]
							"GreedBeacon", -- [16]
						},
					},
					["widthPercent"] = 1,
					["yPercent"] = 0.9800780659246043,
				}, -- [1]
				{
					["xPercent"] = 1.054329493710426e-007,
					["attachPoint"] = "BOTTOM",
					["lock"] = true,
					["plugins"] = {
						["right"] = {
							"VolumeFu", -- [1]
							"FactionsFu", -- [2]
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
							"ag_UnitFrames", -- [16]
							"Bartender3", -- [17]
							"Baggins", -- [18]
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
					["disabled"] = true,
					["title"] = "FelwoodGather",
					["category"] = "map",
				},
				["FuBar_VolumeFu"] = {
					["title"] = "VolumeFu",
					["category"] = "Audio",
				},
				["FuBar_RefreshmentsFu"] = {
				},
				["FuBar_PerformanceFu"] = {
					["title"] = "PerformanceFu",
					["category"] = "Interface Enhancements",
				},
				["FuBar_QuestsFu"] = {
					["title"] = "QuestsFu",
					["category"] = "Quest",
				},
				["FuBar_LockFu"] = {
					["title"] = "LockFu",
					["category"] = "others",
				},
				["FuBar_GroupFu"] = {
					["title"] = "GroupFu",
					["category"] = "Miscellaneous",
				},
				["FuBar_ClockFu"] = {
					["title"] = "ClockFu",
					["disabled"] = true,
					["category"] = "Interface Enhancements",
				},
				["FuBar_AmmoFu"] = {
					["title"] = "AmmoFu",
					["category"] = "Inventory",
				},
				["oRA2"] = {
				},
				["FuBar_LocationFu"] = {
					["title"] = "LocationFu",
					["category"] = "Map",
				},
				["tekProber"] = {
				},
				["Watersports"] = {
				},
				["FuBar_GarbageFu"] = {
					["title"] = "GarbageFu",
					["category"] = "Inventory",
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
				["MailFu"] = true,
				["Tracker"] = true,
				["ToFu"] = true,
				["KeyQ"] = true,
				["QuestsFu"] = true,
				["oRA Menu"] = true,
				["OneView"] = true,
				["Improved Raid Warning Frame"] = true,
				["oRA2"] = true,
				["PaintBall"] = true,
				["ClockFu"] = true,
				["Squishy"] = true,
				["FarmerFu"] = true,
				["CoinPurse"] = true,
				["Bartender2Fu"] = true,
			},
			["thickness"] = 5,
			["transparency"] = 1,
			["leftSpacing"] = 10,
			["skinG"] = 0,
			["places"] = {
				["right"] = {
					["MailFu"] = true,
					["PetitionFu"] = true,
					["Tracker"] = true,
					["ToFu"] = true,
					["KeyQ"] = true,
					["QuestsFu"] = true,
				},
				["center"] = {
				},
				["left"] = {
					["Experienced"] = true,
					["CoinPurse"] = true,
					["Manufac"] = true,
					["oRA Menu"] = true,
					["AceGCInFu"] = true,
					["ArcHUD"] = true,
					["FelwoodGather"] = true,
					["PaintBall"] = true,
					["OneView"] = true,
					["ClockFu"] = true,
					["Squishy"] = true,
					["FarmerFu"] = true,
					["oRA2"] = true,
					["Improved Raid Warning Frame"] = true,
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
				["FuBar_LockFu"] = {
					["title"] = "LockFu",
					["category"] = "others",
				},
				["FuBar_LocationFu"] = {
					["title"] = "LocationFu",
					["category"] = "Map",
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
					["widthPercent"] = 1,
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
					["yPercent"] = 0.5,
				}, -- [1]
				{
					["xPercent"] = 0,
					["attachPoint"] = "BOTTOM",
					["widthPercent"] = 1,
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
					["yPercent"] = 0.5,
				}, -- [2]
				{
					["xPercent"] = 0,
					["attachPoint"] = "TOP",
					["widthPercent"] = 1,
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
					["yPercent"] = 0.5,
				}, -- [3]
				{
					["xPercent"] = 0,
					["attachPoint"] = "TOP",
					["widthPercent"] = 1,
					["plugins"] = {
						["right"] = {
						},
						["center"] = {
						},
						["left"] = {
							"PoisonFu -Ace2-", -- [1]
						},
					},
					["yPercent"] = 0.5,
				}, -- [4]
			},
			["minimap"] = {
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
			["detached"] = {
				["PetitionFu"] = true,
				["KeyQ"] = true,
				["PaintBall"] = true,
			},
		},
	},
}
