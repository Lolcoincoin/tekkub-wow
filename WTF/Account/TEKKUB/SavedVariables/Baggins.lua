
BagginsDB = {
	["profiles"] = {
		["Default"] = {
			["hideduplicates"] = true,
			["hidedefaultbank"] = true,
			["layout"] = "manual",
			["detachedTooltip"] = {
			},
			["highlightnew"] = false,
			["showammocount"] = false,
			["qualitycolorintensity"] = 0.5,
			["bags"] = {
				{
					["y"] = 282.6833093000095,
					["x"] = 584.2400141397441,
					["name"] = "All In One",
					["isBank"] = false,
					["openWithAll"] = true,
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
							["cats"] = {
								"Trinkets", -- [1]
							},
							["hidden"] = false,
							["name"] = "Trinkets",
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
							["hidden"] = false,
							["cats"] = {
								"Water", -- [1]
							},
							["name"] = "Drinks",
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
							["hidden"] = true,
							["name"] = "KeyRing",
							["cats"] = {
								"KeyRing", -- [1]
							},
						}, -- [18]
						{
							["name"] = "Other",
							["cats"] = {
								"Other", -- [1]
							},
						}, -- [19]
					},
				}, -- [1]
				{
					["y"] = 742.5167768748579,
					["x"] = 480.8065125787292,
					["name"] = "Bank All In One",
					["isBank"] = true,
					["openWithAll"] = true,
					["sections"] = {
						{
							["name"] = "Engineering",
							["hidden"] = false,
							["cats"] = {
								"EngineeringBag", -- [1]
							},
						}, -- [1]
						{
							["name"] = "Pets",
							["cats"] = {
								"Pets", -- [1]
							},
							["hidden"] = true,
						}, -- [2]
						{
							["name"] = "FR",
							["cats"] = {
								"Fire Resist", -- [1]
							},
							["hidden"] = true,
						}, -- [3]
						{
							["cats"] = {
								"Nature Resist", -- [1]
							},
							["hidden"] = true,
							["name"] = "NR",
						}, -- [4]
						{
							["cats"] = {
								"Arcane Resist", -- [1]
							},
							["hidden"] = true,
							["name"] = "AR",
						}, -- [5]
						{
							["cats"] = {
								"Shadow Resist", -- [1]
							},
							["hidden"] = true,
							["name"] = "SR",
						}, -- [6]
						{
							["cats"] = {
								"Undead", -- [1]
							},
							["hidden"] = true,
							["name"] = "Undead",
						}, -- [7]
						{
							["cats"] = {
								"Trinkets", -- [1]
							},
							["hidden"] = true,
							["name"] = "Trinkets",
						}, -- [8]
						{
							["name"] = "Bank Equipment",
							["cats"] = {
								"Armor", -- [1]
								"Weapons", -- [2]
							},
						}, -- [9]
						{
							["name"] = "Bank Consumables",
							["cats"] = {
								"Consumables", -- [1]
							},
						}, -- [10]
						{
							["name"] = "Bank Quest",
							["cats"] = {
								"Quest", -- [1]
							},
						}, -- [11]
						{
							["name"] = "Bank Trade Goods",
							["cats"] = {
								"Tradeskill Mats", -- [1]
								"Gathered", -- [2]
							},
						}, -- [12]
						{
							["hidden"] = false,
							["cats"] = {
								"Other", -- [1]
							},
							["name"] = "Bank Other",
						}, -- [13]
						{
							["cats"] = {
								"Empty", -- [1]
							},
							["name"] = "Empty",
						}, -- [14]
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
				["Trinkets"] = {
					{
						["equiploc"] = "INVTYPE_TRINKET",
						["type"] = "EquipLoc",
					}, -- [1]
					["name"] = "Trinkets",
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
					{
						["ctype"] = "Engineering Bag",
						["type"] = "ContainerType",
					}, -- [4]
					{
						["operation"] = "AND",
						["type"] = "Empty",
					}, -- [5]
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
				["Pets"] = {
					{
						["type"] = "PTSet",
						["setname"] = "Misc.Minipet",
					}, -- [1]
					["name"] = "Pets",
				},
				["Potions"] = {
					{
						["type"] = "PTSet",
						["setname"] = "Consumable.Potion",
					}, -- [1]
					["name"] = "Potions",
				},
				["Water"] = {
					{
						["type"] = "PTSet",
						["setname"] = "Consumable.Water",
					}, -- [1]
					["name"] = "Water",
				},
				["Trash"] = {
					{
						["type"] = "Quality",
						["comp"] = "<=",
						["quality"] = 0,
					}, -- [1]
					["name"] = "Trash",
				},
				["Food"] = {
					{
						["type"] = "PTSet",
						["setname"] = "Consumable.Food.Edible",
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
						["type"] = "Tooltip",
						["text"] = "when fighting Undead",
					}, -- [2]
					["name"] = "Undead",
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
						["setname"] = "Tradeskill.Mat",
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
			},
			["showspecialcount"] = false,
			["showused"] = false,
		},
	},
}
