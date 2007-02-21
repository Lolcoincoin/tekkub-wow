
BagginsDB = {
	["profiles"] = {
		["Default"] = {
			["showused"] = false,
			["hidedefaultbank"] = true,
			["layout"] = "manual",
			["showammocount"] = false,
			["qualitycolorintensity"] = 0.5,
			["bags"] = {
				{
					["y"] = 382.5234129990437,
					["x"] = 581.6798578406554,
					["name"] = "All In One",
					["sections"] = {
						{
							["cats"] = {
								"AmmoBag", -- [1]
							},
							["name"] = "Ammo",
						}, -- [1]
						{
							["cats"] = {
								"SoulBag", -- [1]
							},
							["name"] = "SoulBag",
						}, -- [2]
						{
							["cats"] = {
								"Fire Resist", -- [1]
							},
							["name"] = "FR",
						}, -- [3]
						{
							["cats"] = {
								"Nature Resist", -- [1]
							},
							["name"] = "NR",
						}, -- [4]
						{
							["cats"] = {
								"Shadow Resist", -- [1]
							},
							["name"] = "SR",
						}, -- [5]
						{
							["cats"] = {
								"Arcane Resist", -- [1]
							},
							["name"] = "AR",
						}, -- [6]
						{
							["cats"] = {
								"Undead", -- [1]
							},
							["name"] = "Undead",
						}, -- [7]
						{
							["hidden"] = false,
							["cats"] = {
								"Trinkets", -- [1]
							},
							["name"] = "Trinkets",
						}, -- [8]
						{
							["cats"] = {
								"Armor", -- [1]
							},
							["name"] = "Armor",
						}, -- [9]
						{
							["cats"] = {
								"Weapons", -- [1]
							},
							["name"] = "Weapons",
						}, -- [10]
						{
							["cats"] = {
								"Water", -- [1]
							},
							["hidden"] = false,
							["name"] = "Drinks",
						}, -- [11]
						{
							["name"] = "Food",
							["cats"] = {
								"Food", -- [1]
							},
						}, -- [12]
						{
							["name"] = "Potions",
							["cats"] = {
								"Potions", -- [1]
							},
						}, -- [13]
						{
							["name"] = "Scrolls",
							["cats"] = {
								"Scrolls", -- [1]
							},
						}, -- [14]
						{
							["cats"] = {
								"Consumables", -- [1]
							},
							["name"] = "Consumables",
						}, -- [15]
						{
							["cats"] = {
								"Tradeskill Mats", -- [1]
								"Gathered", -- [2]
							},
							["name"] = "Trade Goods",
						}, -- [16]
						{
							["cats"] = {
								"Quest", -- [1]
							},
							["name"] = "Quest",
						}, -- [17]
						{
							["name"] = "KeyRing",
							["hidden"] = true,
							["cats"] = {
								"KeyRing", -- [1]
							},
						}, -- [18]
						{
							["cats"] = {
								"Other", -- [1]
							},
							["name"] = "Other",
						}, -- [19]
					},
					["openWithAll"] = true,
					["isBank"] = false,
				}, -- [1]
				{
					["y"] = 743.3701623078875,
					["x"] = 434.7265494273349,
					["name"] = "Bank All In One",
					["sections"] = {
						{
							["cats"] = {
								"Pets", -- [1]
							},
							["name"] = "Pets",
							["hidden"] = true,
						}, -- [1]
						{
							["cats"] = {
								"Fire Resist", -- [1]
							},
							["name"] = "FR",
							["hidden"] = true,
						}, -- [2]
						{
							["hidden"] = true,
							["cats"] = {
								"Nature Resist", -- [1]
							},
							["name"] = "NR",
						}, -- [3]
						{
							["hidden"] = true,
							["cats"] = {
								"Arcane Resist", -- [1]
							},
							["name"] = "AR",
						}, -- [4]
						{
							["hidden"] = true,
							["cats"] = {
								"Shadow Resist", -- [1]
							},
							["name"] = "SR",
						}, -- [5]
						{
							["hidden"] = true,
							["cats"] = {
								"Undead", -- [1]
							},
							["name"] = "Undead",
						}, -- [6]
						{
							["hidden"] = true,
							["cats"] = {
								"Trinkets", -- [1]
							},
							["name"] = "Trinkets",
						}, -- [7]
						{
							["cats"] = {
								"Armor", -- [1]
								"Weapons", -- [2]
							},
							["name"] = "Bank Equipment",
						}, -- [8]
						{
							["cats"] = {
								"Consumables", -- [1]
							},
							["name"] = "Bank Consumables",
						}, -- [9]
						{
							["cats"] = {
								"Quest", -- [1]
							},
							["name"] = "Bank Quest",
						}, -- [10]
						{
							["cats"] = {
								"Tradeskill Mats", -- [1]
								"Gathered", -- [2]
							},
							["name"] = "Bank Trade Goods",
						}, -- [11]
						{
							["cats"] = {
								"Other", -- [1]
							},
							["hidden"] = false,
							["name"] = "Bank Other",
						}, -- [12]
					},
					["openWithAll"] = true,
					["isBank"] = true,
				}, -- [2]
			},
			["showspecialcount"] = false,
			["showtotal"] = false,
			["detachedTooltip"] = {
			},
			["optimizesectionlayout"] = true,
			["columns"] = 16,
			["sorttype"] = "quality",
			["showsoulcount"] = false,
			["categories"] = {
				["Other"] = {
					{
						["type"] = "Other",
					}, -- [1]
					["name"] = "Other",
				},
				["Nature Resist"] = {
					{
						["type"] = "ItemType",
						["itype"] = "Armor",
					}, -- [1]
					{
						["operation"] = "AND",
						["type"] = "Tooltip",
						["text"] = "Nature Resistance",
					}, -- [2]
					["name"] = "Nature Resist",
				},
				["Bags"] = {
					{
						["type"] = "Bag",
						["bagid"] = 1,
					}, -- [1]
					{
						["operation"] = "OR",
						["type"] = "Bag",
						["bagid"] = 2,
					}, -- [2]
					{
						["operation"] = "OR",
						["type"] = "Bag",
						["bagid"] = 3,
					}, -- [3]
					{
						["operation"] = "OR",
						["type"] = "Bag",
						["bagid"] = 4,
					}, -- [4]
					{
						["operation"] = "OR",
						["type"] = "Bag",
						["bagid"] = 0,
					}, -- [5]
					{
						["operation"] = "NOT",
						["type"] = "AmmoBag",
					}, -- [6]
					{
						["ctype"] = "Soul Bag",
						["type"] = "ContainerType",
						["operation"] = "NOT",
					}, -- [7]
					["name"] = "Bags",
				},
				["KeyRing"] = {
					{
						["noempty"] = true,
						["bagid"] = -2,
						["type"] = "Bag",
					}, -- [1]
					["name"] = "KeyRing",
				},
				["AmmoBag"] = {
					{
						["type"] = "AmmoBag",
					}, -- [1]
					["name"] = "AmmoBag",
				},
				["Pets"] = {
					{
						["type"] = "PTSet",
						["setname"] = "Misc.Minipet",
					}, -- [1]
					["name"] = "Pets",
				},
				["Empty"] = {
					{
						["type"] = "Empty",
					}, -- [1]
					{
						["operation"] = "NOT",
						["type"] = "AmmoBag",
					}, -- [2]
					{
						["ctype"] = "Soul Bag",
						["type"] = "ContainerType",
						["operation"] = "NOT",
					}, -- [3]
					["name"] = "Empty",
				},
				["Tradeskill Mats"] = {
					{
						["type"] = "PTSet",
						["setname"] = "Tradeskill.Mat",
					}, -- [1]
					["name"] = "Tradeskill Mats",
				},
				["Gathered"] = {
					{
						["type"] = "PTSet",
						["setname"] = "Tradeskill.Gather",
					}, -- [1]
					["name"] = "Gathered",
				},
				["Armor"] = {
					{
						["type"] = "ItemType",
						["itype"] = "Armor",
					}, -- [1]
					["name"] = "Armor",
				},
				["Trinkets"] = {
					{
						["type"] = "EquipLoc",
						["equiploc"] = "INVTYPE_TRINKET",
					}, -- [1]
					["name"] = "Trinkets",
				},
				["Quest"] = {
					{
						["type"] = "ItemType",
						["itype"] = "Quest",
					}, -- [1]
					{
						["text"] = "ITEM_BIND_QUEST",
						["type"] = "Tooltip",
					}, -- [2]
					["name"] = "Quest",
				},
				["Consumables"] = {
					{
						["type"] = "ItemType",
						["itype"] = "Consumable",
					}, -- [1]
					["name"] = "Consumables",
				},
				["Potions"] = {
					{
						["type"] = "PTSet",
						["setname"] = "Consumable.Potion",
					}, -- [1]
					["name"] = "Potions",
				},
				["Shadow Resist"] = {
					{
						["type"] = "ItemType",
						["itype"] = "Armor",
					}, -- [1]
					{
						["operation"] = "AND",
						["type"] = "Tooltip",
						["text"] = "Shadow Resistance",
					}, -- [2]
					["name"] = "Shadow Resist",
				},
				["FirstAid"] = {
					{
						["type"] = "PTSet",
						["setname"] = "CraftedBy - First Aid",
					}, -- [1]
					["name"] = "FirstAid",
				},
				["Food"] = {
					{
						["type"] = "PTSet",
						["setname"] = "Consumable.Food.Edible",
					}, -- [1]
					["name"] = "Food",
				},
				["Water"] = {
					{
						["type"] = "PTSet",
						["setname"] = "Consumable.Water",
					}, -- [1]
					["name"] = "Water",
				},
				["BankBags"] = {
					{
						["type"] = "Bag",
						["bagid"] = -1,
					}, -- [1]
					{
						["operation"] = "OR",
						["type"] = "Bag",
						["bagid"] = 5,
					}, -- [2]
					{
						["operation"] = "OR",
						["type"] = "Bag",
						["bagid"] = 6,
					}, -- [3]
					{
						["operation"] = "OR",
						["type"] = "Bag",
						["bagid"] = 7,
					}, -- [4]
					{
						["operation"] = "OR",
						["type"] = "Bag",
						["bagid"] = 8,
					}, -- [5]
					{
						["operation"] = "OR",
						["type"] = "Bag",
						["bagid"] = 9,
					}, -- [6]
					{
						["operation"] = "OR",
						["type"] = "Bag",
						["bagid"] = 10,
					}, -- [7]
					{
						["operation"] = "OR",
						["type"] = "Bag",
						["bagid"] = 11,
					}, -- [8]
					["name"] = "BankBags",
				},
				["TrashEquip"] = {
					{
						["type"] = "ItemType",
						["itype"] = "Armor",
					}, -- [1]
					{
						["operation"] = "OR",
						["type"] = "ItemType",
						["itype"] = "Weapon",
					}, -- [2]
					{
						["type"] = "Quality",
						["comp"] = "<=",
						["operation"] = "AND",
						["quality"] = 1,
					}, -- [3]
					{
						["operation"] = "NOT",
						["type"] = "PTSet",
						["setname"] = "Tradeskill Tools",
					}, -- [4]
					{
						["operation"] = "NOT",
						["type"] = "ItemType",
						["itype"] = "Quest",
					}, -- [5]
					["name"] = "TrashEquip",
				},
				["EngineeringBag"] = {
					{
						["operation"] = "AND",
						["type"] = "ContainerType",
						["ctype"] = "Engineering Bag",
					}, -- [1]
					["name"] = "EngineeringBag",
				},
				["Trash"] = {
					{
						["type"] = "Quality",
						["comp"] = "<=",
						["quality"] = 0,
					}, -- [1]
					["name"] = "Trash",
				},
				["SoulBag"] = {
					{
						["ctype"] = "Soul Bag",
						["type"] = "ContainerType",
					}, -- [1]
					["name"] = "SoulBag",
				},
				["Undead"] = {
					{
						["type"] = "ItemType",
						["itype"] = "Armor",
					}, -- [1]
					{
						["operation"] = "AND",
						["type"] = "Tooltip",
						["text"] = "when fighting Undead",
					}, -- [2]
					["name"] = "Undead",
				},
				["Misc Consumables"] = {
					{
						["type"] = "ItemType",
						["itype"] = "Consumable",
					}, -- [1]
					{
						["operation"] = "NOT",
						["type"] = "PTSet",
						["setname"] = "All Edible Food",
					}, -- [2]
					{
						["operation"] = "NOT",
						["type"] = "PTSet",
						["setname"] = "Water",
					}, -- [3]
					{
						["operation"] = "NOT",
						["type"] = "PTSet",
						["setname"] = "Potion",
					}, -- [4]
					{
						["operation"] = "NOT",
						["type"] = "PTSet",
						["setname"] = "Scrolls",
					}, -- [5]
					{
						["operation"] = "NOT",
						["type"] = "PTSet",
						["setname"] = "Bandages",
					}, -- [6]
					["name"] = "Misc Consumables",
				},
				["Arcane Resist"] = {
					{
						["type"] = "ItemType",
						["itype"] = "Armor",
					}, -- [1]
					{
						["operation"] = "AND",
						["type"] = "Tooltip",
						["text"] = "Arcane Resistance",
					}, -- [2]
					["name"] = "Arcane Resist",
				},
				["Scrolls"] = {
					{
						["type"] = "PTSet",
						["setname"] = "Consumable.Scroll",
					}, -- [1]
					["name"] = "Scrolls",
				},
				["Fire Resist"] = {
					{
						["type"] = "ItemType",
						["itype"] = "Armor",
					}, -- [1]
					{
						["operation"] = "AND",
						["text"] = "Fire Resistance",
						["type"] = "Tooltip",
					}, -- [2]
					["name"] = "Fire Resist",
				},
				["Weapons"] = {
					{
						["type"] = "ItemType",
						["itype"] = "Weapon",
					}, -- [1]
					{
						["operation"] = "NOT",
						["type"] = "PTSet",
						["setname"] = "Tradeskill Tools",
					}, -- [2]
					["name"] = "Weapons",
				},
			},
			["highlightnew"] = false,
			["hideduplicates"] = true,
		},
	},
}
