
BagginsDB = {
	["profiles"] = {
		["Default"] = {
			["showused"] = false,
			["hidedefaultbank"] = true,
			["detachedTooltip"] = {
			},
			["layout"] = "manual",
			["showammocount"] = false,
			["qualitycolorintensity"] = 0.5,
			["hideduplicates"] = true,
			["bags"] = {
				{
					["y"] = 377.7234276337742,
					["x"] = 601.8399388863973,
					["name"] = "All In One",
					["isBank"] = false,
					["openWithAll"] = true,
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
							["name"] = "Trinkets",
							["hidden"] = false,
							["cats"] = {
								"Trinkets", -- [1]
							},
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
							["name"] = "Drinks",
							["cats"] = {
								"Water", -- [1]
							},
							["hidden"] = false,
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
							["cats"] = {
								"KeyRing", -- [1]
							},
							["name"] = "KeyRing",
							["hidden"] = true,
						}, -- [18]
						{
							["cats"] = {
								"Other", -- [1]
							},
							["name"] = "Other",
						}, -- [19]
					},
				}, -- [1]
				{
					["y"] = 743.3701623078875,
					["x"] = 434.7265494273349,
					["name"] = "Bank All In One",
					["isBank"] = true,
					["openWithAll"] = true,
					["sections"] = {
						{
							["hidden"] = true,
							["cats"] = {
								"Pets", -- [1]
							},
							["name"] = "Pets",
						}, -- [1]
						{
							["hidden"] = true,
							["cats"] = {
								"Fire Resist", -- [1]
							},
							["name"] = "FR",
						}, -- [2]
						{
							["name"] = "NR",
							["hidden"] = true,
							["cats"] = {
								"Nature Resist", -- [1]
							},
						}, -- [3]
						{
							["name"] = "AR",
							["hidden"] = true,
							["cats"] = {
								"Arcane Resist", -- [1]
							},
						}, -- [4]
						{
							["name"] = "SR",
							["hidden"] = true,
							["cats"] = {
								"Shadow Resist", -- [1]
							},
						}, -- [5]
						{
							["name"] = "Undead",
							["hidden"] = true,
							["cats"] = {
								"Undead", -- [1]
							},
						}, -- [6]
						{
							["name"] = "Trinkets",
							["hidden"] = true,
							["cats"] = {
								"Trinkets", -- [1]
							},
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
							["name"] = "Bank Other",
							["cats"] = {
								"Other", -- [1]
							},
							["hidden"] = false,
						}, -- [12]
					},
				}, -- [2]
			},
			["showtotal"] = false,
			["optimizesectionlayout"] = true,
			["columns"] = 16,
			["sorttype"] = "quality",
			["showsoulcount"] = false,
			["categories"] = {
				["AmmoBag"] = {
					{
						["type"] = "AmmoBag",
					}, -- [1]
					["name"] = "AmmoBag",
				},
				["Nature Resist"] = {
					{
						["type"] = "ItemType",
						["itype"] = "Armor",
					}, -- [1]
					{
						["operation"] = "AND",
						["text"] = "Nature Resistance",
						["type"] = "Tooltip",
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
						["operation"] = "NOT",
						["type"] = "ContainerType",
						["ctype"] = "Soul Bag",
					}, -- [7]
					["name"] = "Bags",
				},
				["Gathered"] = {
					{
						["type"] = "PTSet",
						["setname"] = "Gather",
					}, -- [1]
					["name"] = "Gathered",
				},
				["Other"] = {
					{
						["type"] = "Other",
					}, -- [1]
					["name"] = "Other",
				},
				["Consumables"] = {
					{
						["type"] = "ItemType",
						["itype"] = "Consumable",
					}, -- [1]
					["name"] = "Consumables",
				},
				["Trash"] = {
					{
						["type"] = "Quality",
						["comp"] = "<=",
						["quality"] = 0,
					}, -- [1]
					["name"] = "Trash",
				},
				["KeyRing"] = {
					{
						["noempty"] = true,
						["bagid"] = -2,
						["type"] = "Bag",
					}, -- [1]
					["name"] = "KeyRing",
				},
				["Pets"] = {
					{
						["type"] = "PTSet",
						["setname"] = "Minipet - All",
					}, -- [1]
					["name"] = "Pets",
				},
				["Fire Resist"] = {
					{
						["type"] = "ItemType",
						["itype"] = "Armor",
					}, -- [1]
					{
						["operation"] = "AND",
						["type"] = "Tooltip",
						["text"] = "Fire Resistance",
					}, -- [2]
					["name"] = "Fire Resist",
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
						["operation"] = "NOT",
						["type"] = "ContainerType",
						["ctype"] = "Soul Bag",
					}, -- [3]
					["name"] = "Empty",
				},
				["Quest"] = {
					{
						["type"] = "ItemType",
						["itype"] = "Quest",
					}, -- [1]
					{
						["type"] = "Tooltip",
						["text"] = "ITEM_BIND_QUEST",
					}, -- [2]
					["name"] = "Quest",
				},
				["Armor"] = {
					{
						["type"] = "ItemType",
						["itype"] = "Armor",
					}, -- [1]
					["name"] = "Armor",
				},
				["Potions"] = {
					{
						["type"] = "PTSet",
						["setname"] = "Potion",
					}, -- [1]
					["name"] = "Potions",
				},
				["Water"] = {
					{
						["type"] = "PTSet",
						["setname"] = "Water",
					}, -- [1]
					["name"] = "Water",
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
						["setname"] = "All Edible Food",
					}, -- [1]
					["name"] = "Food",
				},
				["Undead"] = {
					{
						["type"] = "ItemType",
						["itype"] = "Armor",
					}, -- [1]
					{
						["operation"] = "AND",
						["text"] = "when fighting Undead",
						["type"] = "Tooltip",
					}, -- [2]
					["name"] = "Undead",
				},
				["Trinkets"] = {
					{
						["equiploc"] = "INVTYPE_TRINKET",
						["type"] = "EquipLoc",
					}, -- [1]
					["name"] = "Trinkets",
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
				["Arcane Resist"] = {
					{
						["type"] = "ItemType",
						["itype"] = "Armor",
					}, -- [1]
					{
						["operation"] = "AND",
						["text"] = "Arcane Resistance",
						["type"] = "Tooltip",
					}, -- [2]
					["name"] = "Arcane Resist",
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
				["SoulBag"] = {
					{
						["ctype"] = "Soul Bag",
						["type"] = "ContainerType",
					}, -- [1]
					["name"] = "SoulBag",
				},
				["Tradeskill Mats"] = {
					{
						["type"] = "PTSet",
						["setname"] = "Tradeskill Mats",
					}, -- [1]
					["name"] = "Tradeskill Mats",
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
				["EngineeringBag"] = {
					{
						["ctype"] = "Engineering Bag",
						["type"] = "ContainerType",
						["operation"] = "AND",
					}, -- [1]
					["name"] = "EngineeringBag",
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
				["Shadow Resist"] = {
					{
						["type"] = "ItemType",
						["itype"] = "Armor",
					}, -- [1]
					{
						["operation"] = "AND",
						["text"] = "Shadow Resistance",
						["type"] = "Tooltip",
					}, -- [2]
					["name"] = "Shadow Resist",
				},
				["Scrolls"] = {
					{
						["type"] = "PTSet",
						["setname"] = "Scrolls",
					}, -- [1]
					["name"] = "Scrolls",
				},
			},
			["showspecialcount"] = false,
			["highlightnew"] = false,
		},
	},
}
