--[[
Name: Rating Buster enUS locale
Revision: $Revision: 1 $
Translated by:
- Whitetooth@Cenarius (hotdogee@巴哈姆特baha)
]]
local L = AceLibrary("AceLocale-2.2"):new("RatingBuster")
----
-- This file is coded in UTF-8
-- If you don't have a editor that can save in UTF-8, I recommend Ultraedit
----
-- To translate AceLocale strings, replace true with the translation string
-- Before: ["Show Item ID"] = true,
-- After:  ["Show Item ID"] = "顯示物品編號",
L:RegisterTranslations("enUS", function() return {
	-----------------------
	-- Matching Patterns --
	-----------------------
	-- Items to check --
	--------------------
	-- [Potent Ornate Topaz]
	-- +6 Spell Damage, +5 Spell Crit Rating
	--------------------
	-- ZG enchant
	-- +10 Defense Rating/+10 Stamina/+15 Block Value
	--------------------
	-- [Glinting Flam Spessarite]
	-- +3 Hit Rating and +3 Agility
	--------------------
	-- ItemID: 22589
	-- [Atiesh, Greatstaff of the Guardian] warlock version
	-- Equip: Increases the spell critical strike rating of all party members within 30 yards by 28.
	----------------------------------------------------------------------------------------------------
	-- I redesigned the tooltip scanner using a more locale friendly, 2 pass matching matching algorithm.
	--
	-- The first pass searches for the rating number, the patterns are read from ["numberPatterns"] here,
	-- " by (%d+)" will match strings like: "Increases defense rating by 16."
	-- "%+(%d+)" will match strings like: "+10 Defense Rating"
	-- You can add additional patterns if needed, its not limited to 2 patterns.
	-- The separators are a table of strings used to break up a line into multiple lines what will be parsed seperately.
	-- For example "+3 Hit Rating, +5 Spell Crit Rating" will be split into "+3 Hit Rating" and " +5 Spell Crit Rating"
	--
	-- The second pass searches for the rating name, the names are read from ["ratingNames"] here,
	-- It will look through the table in order, so you can put common strings at the begining to speed up the search,
	-- and longer strings should be listed first, like "spell critical strike" should be listed before "critical strike",
	-- this way "spell critical strike" does get matched by "critical strike".
	-- Strings need to be in lower case letters, because string.lower is called on lookup
	--
	-- IMPORTANT: there may not exist a one-to-one correspondence, meaning you can't just translate this file,
	-- but will need to go in game and find out what needs to be put in here.
	-- For example, in english I found 3 different strings that maps to RB_CRIT_MELEE: "critical strike", "critical hit" and "crit".
	-- You will need to find out every string that represents RB_CRIT_MELEE, and so on.
	-- In other languages there may be 5 different strings that should all map to RB_CRIT_MELEE.
	-- so please check in game that you have all strings, and not translate directly off this table.
	--
	-- Tip1: When doing localizations, I recommend you set debugging to true in RatingBuster.lua
	-- Find RatingBuster:SetDebugging(false) and change it to RatingBuster:SetDebugging(true)
	-- or you can type /rb debug to enable it in game
	--
	-- Tip2: The strings are passed into string.find, so you should escape the magic characters ^$()%.[]*+-? with a %
	["numberPatterns"] = {
		{pattern = " by (%d+)", separators = {" and "},},
		{pattern = "%+(%d+)", separators = {"/", " and ", ","},},
	},
	["ratingNames"] = {
		{"defense rating", RB_DEFENSE_SKILL},
		{"dodge rating", RB_DODGE},
		{"block rating", RB_BLOCK}, -- block enchant: "+10 Shield Block Rating"
		{"parry rating", RB_PARRY},

		{"spell critical strike rating", RB_CRIT_SPELL},
		{"spell critical hit rating", RB_CRIT_SPELL},
		{"spell critical rating", RB_CRIT_SPELL},
		{"spell crit rating", RB_CRIT_SPELL},
		{"ranged critical strike rating", RB_CRIT_RANGED},
		{"ranged critical hit rating", RB_CRIT_RANGED},
		{"ranged critical rating", RB_CRIT_RANGED},
		{"ranged crit rating", RB_CRIT_RANGED},
		{"critical strike rating", RB_CRIT_MELEE},
		{"critical hit rating", RB_CRIT_MELEE},
		{"crit rating", RB_CRIT_MELEE},

		{"spell hit rating", RB_HIT_SPELL},
		{"ranged hit rating", RB_HIT_RANGED},
		{"hit rating", RB_HIT_MELEE},

		{"resilience", RB_RESILIENCE}, -- resilience is implicitly a rating

		{"spell haste rating", RB_HASTE_SPELL},
		{"ranged haste rating", RB_HASTE_RANGED},
		{"haste rating", RB_HASTE_MELEE},
		{"speed rating", RB_HASTE_MELEE}, -- [Drums of Battle]

		{"skill rating", RB_WEAPON_SKILL},
		--[[
		{"dagger skill rating", RB_WEAPON_SKILL},
		{"sword skill rating", RB_WEAPON_SKILL},
		{"two%-handed swords skill rating", RB_WEAPON_SKILL},
		{"axe skill rating", RB_WEAPON_SKILL},
		{"bow skill rating", RB_WEAPON_SKILL},
		{"crossbow skill rating", RB_WEAPON_SKILL},
		{"gun skill rating", RB_WEAPON_SKILL},
		{"feral combat skill rating", RB_WEAPON_SKILL},
		{"mace skill rating", RB_WEAPON_SKILL},
		{"polearm skill rating", RB_WEAPON_SKILL},
		{"staff skill rating", RB_WEAPON_SKILL},
		{"two%-handed axes skill rating", RB_WEAPON_SKILL},
		{"two%-handed maces skill rating", RB_WEAPON_SKILL},
		{"fist weapons skill rating", RB_WEAPON_SKILL},
		--]]
	},
} end)