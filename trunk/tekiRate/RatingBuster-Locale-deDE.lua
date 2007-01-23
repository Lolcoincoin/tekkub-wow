--[[
Name: Rating Buster deDE locale
Revision: $Revision: 1 $
Translated by: 
- Runenstetter@Nathrezim.EU
]]
local L = AceLibrary("AceLocale-2.2"):new("RatingBuster")
----
-- This file is coded in UTF-8
-- If you don't have a editor that can save in UTF-8, I recommend Ultraedit
----
L:RegisterTranslations("deDE", function() return {
	---------------------------
	-- Slash Command Options --
	---------------------------
	-- /rb itemid
	["Show Item ID"] = "Zeige Item ID",
	["Toggle display of Item ID in tooltip"] = "Item ID im Tooltip ein/ausschalten",
	-- /rb itemlevel
	["Show Item Level"] = "Zeige Item Level",
	["Toggle display of Item Level in tooltip"] = "Item Level im Tooltip ein/ausschalten",
	-- /rb usereqlv
	["Use Required Level"] = "Nutze benötigten Level",
	["Toggle calculate using the required level if you are below the required level"] = "Nutze benötigten Level, wenn du unter dem benötigten Level bist",
	-- /rb targetlevel
	["Target Level"] = "Level des Ziels",
	["Changes the Target Level used in rating calculations"] = "ändert den Level des Ziels, der in der Berechnung benutzt wird",
	-----------------------
	-- Item Level and ID --
	-----------------------
	-- ["ItemLevel: "] = true,
	-- ["ItemID: "] = true,
	-----------------------
	-- Matching Patterns --
	-----------------------
	["numberPatterns"] = {
		{pattern = " um (%d+)", separators = {" und "},},
		{pattern = "%+(%d+)", separators = {"/", " and ", ","},},
	},
	["ratingNames"] = {	
		{"verteidigungswertung", RB_DEFENSE_SKILL},
		{"ausweichwertung", RB_DODGE},
		{"blockwertung", RB_BLOCK},
		{"parierwertung", RB_PARRY},
	
		
		{"kritische zaubertrefferwertung", RB_CRIT_SPELL},
		{"zaubertrefferwertung", RB_HIT_SPELL},
		
		{"kritische distanztrefferwertung", RB_CRIT_RANGED},
		{"distanztrefferwertung", RB_HIT_RANGED},
		
		{"kritische trefferwertung", RB_CRIT_MELEE},
		{"trefferwertung", RB_HIT_MELEE},		
		
		
		{"abhärtungswertung", RB_RESILIENCE}, -- resilience is implicitly a rating
		
		{"zaubertempowertung", RB_HASTE_SPELL},
		{"distanzangriffstempowertung", RB_HASTE_RANGED},
		{"angriffstempowertung", RB_HASTE_MELEE},
		-- {"speed rating", RB_HASTE_MELEE}, -- [Drums of Battle]
		
		{"fertigkeitswertung", RB_WEAPON_SKILL},
		--[[
		{"fertigkeitswertung für dolche", RB_WEAPON_SKILL},
		{"fertigkeitswertung für schwerter", RB_WEAPON_SKILL},
		{"fertigkeitswertung für zweihandschwerter", RB_WEAPON_SKILL},
		{"fertigkeitswertung für äxte", RB_WEAPON_SKILL},
		{"fertigkeitswertung für bögen", RB_WEAPON_SKILL},
		{"fertigkeitswertung für armbrüste", RB_WEAPON_SKILL},
		{"fertigkeitswertung für schusswaffen", RB_WEAPON_SKILL},
		{"fertigkeitswertung für %'wilden kampf%'", RB_WEAPON_SKILL},
		{"fertigkeitswertung für streitkolben", RB_WEAPON_SKILL},
		{"fertigkeitswertung für stangenwaffen", RB_WEAPON_SKILL},
		{"fertigkeitswertung für stäbe", RB_WEAPON_SKILL},
		{"fertigkeitswertung für zweihandäxte", RB_WEAPON_SKILL},
		{"fertigkeitswertung für zweihandstreitkolben", RB_WEAPON_SKILL},
		{"fertigkeitswertung für faustwaffen", RB_WEAPON_SKILL},
		--]]
	},
} end)
