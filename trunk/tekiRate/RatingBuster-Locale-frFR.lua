--[[
Name: Rating Buster frFR locale (incomplete)
Revision: $Revision: 1 $
Translated by: 
- Tixu@Curse
]]
local L = AceLibrary("AceLocale-2.2"):new("RatingBuster")
----
-- This file is coded in UTF-8
-- If you don't have a editor that can save in UTF-8, I recommend Ultraedit
----
L:RegisterTranslations("frFR", function() return {
	---------------------------
	-- Slash Command Options --
	---------------------------
	-- /rb itemid
	["Show Item ID"] = "Voir ItemID",
	["Toggle display of Item ID in tooltip"] = "Permuter l'affichage de l'identifiant interne des objets ",
	-- /rb itemlevel
	["Show Item Level"] = "Voir ItemLvl",
	["Toggle display of Item Level in tooltip"] = "Permuter l'affichage du niveau des objets",
	-- /rb usereqlv
	["Use Required Level"] = "Utiliser le niveau requis",
	["Toggle calculate using the required level if you are below the required level"] = "Utiliser le niveau requis par l'objet si vous ne l'atteignez pas",
	-- /rb targetlevel
	["Target Level"] = "Niveau de la cible",
	["Changes the Target Level used in rating calculations"] = "Modifier le niveau de la cible enemie utilis\195\169e pour le calcul des statistiques",
	-----------------------
	-- Item Level and ID --
	-----------------------
	--["ItemLevel: "] = true,
	--["ItemID: "] = true,
	-----------------------
	-- Matching Patterns --
	-----------------------
	["numberPatterns"] = {
		{pattern = " de (%d+)", separators = {" et "},},
		{pattern = "%+(%d+)", separators = {"/", " et ", ","},},
	},
	["ratingNames"] = {	
		{"score de d\195\169fense", RB_DEFENSE_SKILL},
		{"score d'esquive", RB_DODGE},
		{"score de blocage", RB_BLOCK},
		{"score de parade", RB_PARRY},
		
		{"score de critique des sorts", RB_CRIT_SPELL},
		-- {"score de critique \195\160 distance", RB_CRIT_RANGED},
		{"score de coup critique", RB_CRIT_MELEE}, 
		{"score de toucher des sorts", RB_HIT_SPELL},
		-- {"score de toucher \195\160 distance", RB_HIT_RANGED},
		{"score de toucher", RB_HIT_MELEE},
		
		{"r\195\169silience", RB_RESILIENCE}, -- resilience is implicitly a rating
		-- {"spell haste rating", RB_HASTE_SPELL},
		-- {"ranged haste rating", RB_HASTE_RANGED},
		-- {"speed rating", RB_HASTE_MELEE}, -- [Drums of Battle]
		-- 
		{"score de la comp\195\169tence", RB_WEAPON_SKILL},
	},
} end)