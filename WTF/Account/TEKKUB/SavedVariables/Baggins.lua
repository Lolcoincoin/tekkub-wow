
BagginsDB = {
	["profiles"] = {
		["Default"] = {
			["hideduplicates"] = true,
			["hidedefaultbank"] = true,
			["detachedTooltip"] = {
			},
			["showammocount"] = false,
			["qualitycolorintensity"] = 0.5,
			["highlightnew"] = false,
			["bags"] = {
				{
					["y"] = 377.7234276337742,
					["x"] = 601.8399388863973,
					["name"] = "All In One",
					["sections"] = {
						{
							["name"] = "Ammo",
							["cats"] = {
								"AmmoBag", -- [1]
							},
						}, -- [1]
						{
							["name"] = "SoulBag",
							["cats"] = {
								"SoulBag", -- [1]
							},
						}, -- [2]
						{
							["name"] = "FR",
							["cats"] = {
								"Fire Resist", -- [1]
							},
						}, -- [3]
						{
							["name"] = "NR",
							["cats"] = {
								"Nature Resist", -- [1]
							},
						}, -- [4]
						{
							["name"] = "SR",
							["cats"] = {
								"Shadow Resist", -- [1]
							},
						}, -- [5]
						{
							["name"] = "AR",
							["cats"] = {
								"Arcane Resist", -- [1]
							},
						}, -- [6]
						{
							["name"] = "Undead",
							["cats"] = {
								"Undead", -- [1]
							},
						}, -- [7]
						{
							["name"] = "Trinkets",
							["hidden"] = false,
							["cats"] = {
								"Trinkets", -- [1]
							},
						}, -- [8]
						{
							["name"] = "Armor",
							["cats"] = {
								"Armor", -- [1]
							},
						}, -- [9]
						{
							["name"] = "Weapons",
							["cats"] = {
								"Weapons", -- [1]
							},
						}, -- [10]
						{
							["name"] = "Drinks",
							["cats"] = {
								"Water", -- [1]
							},
							["hidden"] = false,
						}, -- [11]
						{
							["cats"] = {
								"Food", -- [1]
							},
							["name"] = "Food",
						}, -- [12]
						{
							["cats"] = {
								"Potions", -- [1]
							},
							["name"] = "Potions",
						}, -- [13]
						{
							["cats"] = {
								"Scrolls", -- [1]
							},
							["name"] = "Scrolls",
						}, -- [14]
						{
							["name"] = "Consumables",
							["cats"] = {
								"Consumables", -- [1]
							},
						}, -- [15]
						{
							["name"] = "Trade Goods",
							["cats"] = {
								"Tradeskill Mats", -- [1]
								"Gathered", -- [2]
							},
						}, -- [16]
						{
							["name"] = "Quest",
							["cats"] = {
								"Quest", -- [1]
							},
						}, -- [17]
						{
							["cats"] = {
								"KeyRing", -- [1]
							},
							["name"] = "KeyRing",
							["hidden"] = true,
						}, -- [18]
						{
							["name"] = "Other",
							["cats"] = {
								"Other", -- [1]
							},
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
							["name"] = "Bank Equipment",
							["cats"] = {
								"Armor", -- [1]
								"Weapons", -- [2]
							},
						}, -- [8]
						{
							["name"] = "Bank Consumables",
							["cats"] = {
								"Consumables", -- [1]
							},
						}, -- [9]
						{
							["name"] = "Bank Quest",
							["cats"] = {
								"Quest", -- [1]
							},
						}, -- [10]
						{
							["name"] = "Bank Trade Goods",
							["cats"] = {
								"Tradeskill Mats", -- [1]
								"Gathered", -- [2]
							},
						}, -- [11]
						{
							["name"] = "Bank Other",
							["cats"] = {
								"Other", -- [1]
							},
							["hidden"] = false,
						}, -- [12]
					},
					["openWithAll"] = true,
					["isBank"] = true,
				}, -- [2]
			},
			["showspecialcount"] = false,
			["showtotal"] = false,
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
						["type"] = "Bag",
						["bagid"] = -2,
						["noempty"] = true,
					}, -- [1]
					["name"] = "KeyRing",
				},
				["AmmoBag"] = {
					{
						["type"] = "AmmoBag",
					}, -- [1]
					["name"] = "AmmoBag",
				},
				["Water"] = {
					{
						["type"] = "PTSet",
						["setname"] = "Water",
					}, -- [1]
					["name"] = "Water",
				},
				["Gathered"] = {
					{
						["type"] = "PTSet",
						["setname"] = "Gather",
					}, -- [1]
					["name"] = "Gathered",
				},
				["Pets"] = {
					{
						["type"] = "PTSet",
						["setname"] = "Minipet - All",
					}, -- [1]
					["name"] = "Pets",
				},
				["Consumables"] = {
					{
						["type"] = "ItemType",
						["itype"] = "Consumable",
					}, -- [1]
					["name"] = "Consumables",
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
				["Potions"] = {
					{
						["type"] = "PTSet",
						["setname"] = "Potion",
					}, -- [1]
					["name"] = "Potions",
				},
				["Tradeskill Mats"] = {
					{
						["type"] = "PTSet",
						["setname"] = "Tradeskill Mats",
					}, -- [1]
					["name"] = "Tradeskill Mats",
				},
				["Food"] = {
					{
						["type"] = "PTSet",
						["setname"] = "All Edible Food",
					}, -- [1]
					["name"] = "Food",
				},
				["Trinkets"] = {
					{
						["type"] = "EquipLoc",
						["equiploc"] = "INVTYPE_TRINKET",
					}, -- [1]
					["name"] = "Trinkets",
				},
				["Armor"] = {
					{
						["type"] = "ItemType",
						["itype"] = "Armor",
					}, -- [1]
					["name"] = "Armor",
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
				["FirstAid"] = {
					{
						["type"] = "PTSet",
						["setname"] = "CraftedBy - First Aid",
					}, -- [1]
					["name"] = "FirstAid",
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
				["Scrolls"] = {
					{
						["type"] = "PTSet",
						["setname"] = "Scrolls",
					}, -- [1]
					["name"] = "Scrolls",
				},
			},
			["showused"] = false,
			["layout"] = "manual",
		},
	},
}
