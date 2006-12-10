
local L = AceLibrary("AceLocale-2.0"):new("PerfectTargets")

L:RegisterTranslations("enUS", function() return {
	-- Debuffs
	["Wyvern Sting"] = true,
	["Scare Beast"] = true,
	["Polymorph"] = true,
	["Polymorph: Pig"] = true,
	["Polymorph: Turtle"] = true,
	["Sap"] = true,
	["Seduction"] = true,
	["Hibernate"] = true,
	["Shackle Undead"] = true,
	["Freezing Trap Effect"] = true,
	["Banish"] = true,

	-- Skill
	["Hunter's Mark"] = true,

	-- Menus
	["Lock frame"] = true,
	["Lock target frame's position."] = true,

	["Tank Initials"] = true,
	["Number of tank initials to append to the frames."] = true,

	["Update Rate"] = true,
	["Base frame update rate."] = true,

	["Number of targets"] = true,
	["Maximum number of target frames shown."] = true,
} end)


L:RegisterTranslations("zhTW", function() return {
	-- Debuffs
	["Wyvern Sting"] = "翼龍釘刺",
	["Scare Beast"] = "恐嚇野獸",
	["Polymorph"] = "變形術",
	["Polymorph: Pig"] = "變豬術",
	["Polymorph: Turtle"] = "變龜術",
	["Sap"] = "悶棍",
	["Seduction"] = "誘惑",
	["Hibernate"] = "休眠",
	["Shackle Undead"] = "束縛不死生物",
	["Freezing Trap Effect"] = "冰凍陷阱效果",
	["Banish"] = "放逐術",

	-- Skill
	["Hunter's Mark"] = "獵人印記",

	-- Menus
	["Lock frame"] = "鎖定視窗",
	["Lock target frame's position."] = "鎖定目標視窗在目前位置.",

	["Tank Initials"] = "初始坦克",
	["Number of tank initials to append to the frames."] = "增加到這個視窗的坦克字首數量.",

	["Update Rate"] = "更新速率",
	["Base frame update rate."] = "主視窗更新速率.",

	["Number of targets"] = "目標數目",
	["Maximum number of target frames shown."] = "顯示在目標視窗上的最大數目.",
} end)