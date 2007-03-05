
BagginsDB = {
	["profiles"] = {
		["Default"] = {
			["showused"] = false,
			["hidedefaultbank"] = true,
			["detachedTooltip"] = {
			},
			["qualitycolorintensity"] = 0.5,
			["showammocount"] = false,
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
				["Pets"] = {
					{
						["type"] = "PTSet",
						["setname"] = "Misc.Minipet",
					}, -- [1]
					["name"] = "Pets",
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
				["Gathered"] = {
					{
						["type"] = "PTSet",
						["setname"] = "Tradeskill.Gather",
					}, -- [1]
					["name"] = "Gathered",
				},
				["Water"] = {
					{
						["type"] = "PTSet",
						["setname"] = "Consumable.Water",
					}, -- [1]
					["name"] = "Water",
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
				["Potions"] = {
					{
						["type"] = "PTSet",
						["setname"] = "Consumable.Potion",
					}, -- [1]
					["name"] = "Potions",
				},
				["Armor"] = {
					{
						["type"] = "ItemType",
						["itype"] = "Armor",
					}, -- [1]
					["name"] = "Armor",
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
				["Trinkets"] = {
					{
						["equiploc"] = "INVTYPE_TRINKET",
						["type"] = "EquipLoc",
					}, -- [1]
					["name"] = "Trinkets",
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
						["ctype"] = "Engineering Bag",
						["type"] = "ContainerType",
						["operation"] = "AND",
					}, -- [1]
					["name"] = "EngineeringBag",
				},
				["Tradeskill Mats"] = {
					{
						["type"] = "PTSet",
						["setname"] = "Tradeskill.Mat",
					}, -- [1]
					["name"] = "Tradeskill Mats",
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
						["text"] = "Arcane Resistance",
						["type"] = "Tooltip",
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
				["Trash"] = {
					{
						["type"] = "Quality",
						["comp"] = "<=",
						["quality"] = 0,
					}, -- [1]
					["name"] = "Trash",
				},
				["Scrolls"] = {
					{
						["type"] = "PTSet",
						["setname"] = "Consumable.Scroll",
					}, -- [1]
					["name"] = "Scrolls",
				},
			},
			["bags"] = {
				{
					["y"] = 282.6832769110072,
					["x"] = 584.2400141397441,
					["name"] = "All In One",
					["isBank"] = false,
					["openWithAll"] = false,
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
							["hidden"] = false,
							["name"] = "Trinkets",
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
							["cats"] = {
								"Water", -- [1]
							},
							["name"] = "Drinks",
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
							["name"] = "KeyRing",
							["cats"] = {
								"KeyRing", -- [1]
							},
							["hidden"] = true,
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
							["hidden"] = false,
							["cats"] = {
								"EngineeringBag", -- [1]
							},
							["name"] = "Engineering",
						}, -- [1]
						{
							["cats"] = {
								"Pets", -- [1]
							},
							["hidden"] = true,
							["name"] = "Pets",
						}, -- [2]
						{
							["cats"] = {
								"Fire Resist", -- [1]
							},
							["hidden"] = true,
							["name"] = "FR",
						}, -- [3]
						{
							["hidden"] = true,
							["name"] = "NR",
							["cats"] = {
								"Nature Resist", -- [1]
							},
						}, -- [4]
						{
							["hidden"] = true,
							["name"] = "AR",
							["cats"] = {
								"Arcane Resist", -- [1]
							},
						}, -- [5]
						{
							["hidden"] = true,
							["name"] = "SR",
							["cats"] = {
								"Shadow Resist", -- [1]
							},
						}, -- [6]
						{
							["hidden"] = true,
							["name"] = "Undead",
							["cats"] = {
								"Undead", -- [1]
							},
						}, -- [7]
						{
							["hidden"] = true,
							["name"] = "Trinkets",
							["cats"] = {
								"Trinkets", -- [1]
							},
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
							["cats"] = {
								"Other", -- [1]
								"Empty", -- [2]
							},
							["name"] = "Bank Other",
							["hidden"] = false,
						}, -- [13]
					},
				}, -- [2]
			},
			["showtotal"] = false,
			["optimizesectionlayout"] = true,
			["columns"] = 16,
			["sorttype"] = "quality",
			["showsoulcount"] = false,
			["showspecialcount"] = false,
			["highlightnew"] = false,
			["hideduplicates"] = true,
			["layout"] = "manual",
		},
	},
}
